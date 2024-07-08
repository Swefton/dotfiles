import { Media } from "./Media.js"

const calendar = Widget.Calendar({
    hexpand: true,
    hpack: "center",
})

const calendar_window = Widget.Window({
    name: 'calendar',
    anchor: ['top'],
    child: calendar,
})

const mediaplayer = Widget.Window({
    name: "mpris",
    anchor: ["top", "right"],
    child: Media(),
})

App.config({
    style: "./style.css",
    windows: [calendar_window, mediaplayer],
})


// const time = Variable('', {
//     poll: [1000, function() {
//         return Date().toString()
//     }],
// })

// const Bar = (/** @type {number} */ monitor) => Widget.Window({
//     monitor,
//     name: `bar${monitor}`,
//     anchor: ['top', 'left', 'right'],
//     exclusivity: 'exclusive',
//     child: Widget.CenterBox({
//         start_widget: Widget.Label({
//             hpack: 'center',
//             label: 'Welcome to AGS!',
//         }),
//         end_widget: Widget.Label({
//             hpack: 'center',
//             label: time.bind(),
//         }),
//     }),
// })