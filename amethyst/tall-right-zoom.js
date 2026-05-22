function layout() {
    return {
        name: "Tall Right (Zoom)",
        extends: "tall-right",
        initialState: {
            topOffset: 150
        },
        commands: {
            command1: {
                description: "Increase Zoom top offset",
                updateState: (state) => ({ ...state, topOffset: state.topOffset + 10 })
            },
            command2: {
                description: "Decrease Zoom top offset",
                updateState: (state) => ({ ...state, topOffset: Math.max(0, state.topOffset - 10) })
            }
        },
        getFrameAssignments: (windows, screenFrame, state, extendedFrames) => {
            const cutoffY = screenFrame.y + state.topOffset;
            return extendedFrames.reduce((frames, extendedFrame) => {
                const f = extendedFrame.frame;
                const newY = Math.max(f.y, cutoffY);
                const newHeight = Math.max(0, f.height - (newY - f.y));
                return {
                    ...frames,
                    [extendedFrame.id]: {
                        x: f.x,
                        y: newY,
                        width: f.width,
                        height: newHeight
                    }
                };
            }, {});
        }
    };
}
