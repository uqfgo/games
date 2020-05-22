/**
 * Promise 形式的 getSetting
 */
export const getSetting = () => {
    return new Promise((resolve, reject) => {

        wx.getSetting({
            success: (result) => {
                resolve(result)
            },
            fail: (err) => {
                reject(err)
            }
        });

    }).catch((e) => {})
}

/**
 * Promise 形式的 chooseAddress
 */
export const chooseAddress = () => {
    return new Promise((resolve, reject) => {

        wx.chooseAddress({
            success: (result) => {
                resolve(result)
            },
            fail: (err) => {
                reject(err)
            }
        });

    }).catch((e) => {})
}

/**
 * Promise 形式的 openSettion ,不知道为什么不行，算了
 */
// export const openSettion = () => {
//     return new Promise((resolve, reject) => {

//         wx.openSetting({
//             success: (result) => {
//                 // resolve(result)
//             },
//             fail: (err) => {
//                 // reject(err)
//             },
//             complete: () => {}
//         });

//     }).catch((e) => {})
// }