# tmux Commands and Notes

Unless told otherwise, release `<C-a>` before keying the next key.

For more, see [here](https://gist.github.com/MohamedAlaa/2961058).

##### Sessions

In the main terminal:

* New session: `tn <session>`
* Load session: `ta <session>`

In tmux:

* List sessions: `<C-a> s`
* Detach session: `<C-a> d` (however, the session will run in background)

#### Windows

* Create window: `<C-a> c`
* Rename window: `<C-a> ,`
* Go to window: `<C-a> x` :: where x is the window's number
* Next window: `<C-a> n`
* Previous window: `<C-a> p`
* Rename window: `<C-a> ,`

#### Panes (splits)

* Vertical split: `<C-a> -`
* Horizonte split: `<C-a> |`
* Move panes: `<C-a> <hjkl>`
* Change panes: `<C-a> o`
* Show pane numbers: `<C-a> q`
    * While numbers are up, go to pane `<x>`: `x`
* To move panes:
    * Swap panes: `<C-a>+o` (hold both keys)
    * To move current left: `<C-a> {`
    * To move current right: `<C-a> }`
    * With more control:
        - Mark the active pane with `<C-a> m`
        - Then go to the pane to swap with
        - Then `<c-a> S`
* To change the pane size:
    - To resize up by 5: `<C-a> K`
    - To resize down: `<C-a> J`
    - To resize left by 5: `<C-a> H`
    - To resize right by 5: `<C-a> R`
* To change the layout:
    - To cycle through layouts: `<C-a> D`
    - To go to the tiled layout: `<C-a> T`

#### Copy Mode

* To enter: `<C-a> [`
* Use vi controls to move around


