/* 
		柱子
			属性：
				定位，左，右，宽，高，背景，
			方法：
				往左移动
 */
;(function (window, undefined) {
	function Pillar(options) {
		options = options || {}
		this.position = options.position || 'absolute'
		this.width = options.width || 52
		this.height = options.height || 420
	}
	
	Pillar.prototype.Render = function (parent, boole, num) {
		var div = document.createElement('div')
		div.className = 'pillars'
		boole? div.id = 'up' + num: div.id = 'down' + num
		var Dshort = div.style
		Dshort.position = this.position
		Dshort.top = boole? '-' + (Math.floor(Math.random() * 10) + 200) + 'px': (back.offsetHeight - this.height/2 - Math.floor(Math.random() * 100)) + 'px'
		Dshort.left = (num + 1) * 200 + 'px'
		Dshort.width = this.width + 'px'
		Dshort.height = this.height + 'px'
		Dshort.background = boole? 'url(images/pipe2.png)': 'url(images/pipe1.png)'
		parent.appendChild(div)
	}
	
	Pillar.prototype.leftMove = function (parent, callback) {
		var ds = document.getElementsByClassName('pillars')
		this.timers_three = setInterval(function () {
			for (let i = 0; i < ds.length; i++) {
				var num = ds[i].offsetLeft
				if (num <= -52) {
					num = parent.offsetWidth - 20
					callback()
				}
				ds[i].style.left = num - 1 + 'px'
			}
		}, 10)
	}
	
	Pillar.prototype.Clear = function () {
		clearInterval(this.timers_three)
	}
	
	Pillar.prototype.Ulogic = function (len, bird, callback) {
		for (let i = 0; i < len; i++) {
			;(function () {
				// 获取上柱子
				var obj = document.getElementById('up' + i)
				// 定时器
				var timersi = 'timersU' + i
				window[timersi] = setInterval(fun, 100)
				// 封装函数
				function fun() {
					// 变量
					var minTop,
						pLeft,
						pWidth,
						dLeft,
						dTop,
						dWidth	
					minTop = obj.offsetHeight + obj.offsetTop
					pLeft = obj.offsetLeft
					pWidth = obj.offsetWidth
					dWidth = bird.offsetWidth
					dTop = bird.offsetTop
					dLeft = bird.offsetLeft
					if ((dLeft + dWidth) >= pLeft && dLeft <= (pLeft + pWidth) && dTop <= minTop) {
						callback()
					}
				}
			})(i, callback)
		}
	}
	
	Pillar.prototype.Dlogic = function (len, bird, callback) {
		for (let i = 0; i < len; i++) {
			;(function () {
				// 获取下柱子
				var obj = document.getElementById('down' + i)
				// 定时器
				var timersi = 'timersD' + i
				window[timersi] = setInterval(fun, 100)
				// 封装函数
				function fun() {
					// 变量
					var minTop,
						maxTop,
						pLeft,
						pWidth,
						dLeft,
						dTop,
						dWidth,
						dHeight
					maxTop = obj.offsetTop
					pLeft = obj.offsetLeft
					pWidth = obj.offsetWidth
					dWidth = bird.offsetWidth
					dHeight = bird.offsetHeight
					dTop = bird.offsetTop
					dLeft = bird.offsetLeft
					if ((dLeft + dWidth) >= pLeft && dLeft <= (pLeft + pWidth) && (dTop + dHeight) >= maxTop) {
						callback()
					}
				}
			})(i, callback)
		}
	}
	
	Pillar.prototype.logicEnd = function (len) {
		for (let i = 0; i < len; i++) {
			clearInterval(window['timersD' + i])
			clearInterval(window['timersU' + i])
		}
	}
	
	
	window.Pillar = Pillar
	
})(window, undefined)