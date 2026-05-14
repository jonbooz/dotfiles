return {
  "folke/snacks.nvim",
  opts = function()
    local Tree = require("snacks.explorer.tree")

    local mtime_cache = {}
    local function mtime(path)
      local cached = mtime_cache[path]
      if cached ~= nil then
        return cached
      end
      local stat = vim.uv.fs_stat(path)
      local m = stat and stat.mtime.sec or 0
      mtime_cache[path] = m
      return m
    end

    Tree.walk = function(self, node, fn, walk_opts)
      local abort = fn(node)
      if abort ~= nil then
        return abort
      end
      if node == self.root or not node.parent then
        mtime_cache = {}
      end
      local children = vim.tbl_values(node.children)
      table.sort(children, function(a, b)
        if a.dir ~= b.dir then
          return a.dir
        end
        if a.dir then
          return a.name < b.name
        end
        local am, bm = mtime(a.path), mtime(b.path)
        if am ~= bm then
          return am > bm
        end
        return a.name < b.name
      end)
      for c, child in ipairs(children) do
        child.last = c == #children
        local stop = false
        if child.dir and (child.open or (walk_opts and walk_opts.all)) then
          stop = self:walk(child, fn, walk_opts)
        else
          stop = fn(child)
        end
        if stop then
          return true
        end
      end
      return false
    end
  end,
}
