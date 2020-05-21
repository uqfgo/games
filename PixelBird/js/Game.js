;(function(window, undefined) {

	// 游戏逻辑
	var that,
		condition,
		len
	var score = 0
	var degree = 30
	var status = false
	var renew = false
	var StartGame = true

	function Game(parent_two) {
		this.parent_two = parent_two
		this.Back = new Back()
		this.Bird = new Bird()
		this.Pillar = new Pillar()
		that = this
	}

	// 原型
	Game.prototype.Init = function() {
		// 背景渲染 移动
		that.Back.Render(that.parent_two)
		// 像素鸟渲染 移动 点击上升
		var back = document.getElementById('back')
		that.Bird.Render(back)
		// 柱子渲染
		len = back.offsetWidth / 200
		for (let i = 0; i < len; i++) {
			that.Pillar.Render(back, true, i)
			that.Pillar.Render(back, false, i)
		}
	}

	Game.prototype.Begin = function() {
		that.Back.leftMove()
		that.Bird.move()
		that.Bird.Drop(degree)
		that.Bird.Up(back)
		that.Bird.Down()
		that.Pillar.leftMove(back, function() {
			score++
		})
		var bird = document.getElementById('bd')
		that.Pillar.Ulogic(len, bird, function() {
			that.End(function() {
				alert('游戏结束，请在左侧输入你的姓名')
				StartGame = true
			})
		})
		that.Pillar.Dlogic(len, bird, function() {
			that.End(function() {
				alert('游戏结束，请在左侧输入你的姓名')
				StartGame = true
			})
		})
	}

	Game.prototype.End = function(callBack) {
		status = true
		that.Back.Clear()
		that.Bird.Clear()
		that.Bird.EndUp(back)
		that.Bird.DownEnd()
		that.Bird.MoveEnd()
		that.Pillar.Clear()
		that.Pillar.logicEnd(len)
		callBack()
		// 游戏结束后进行数据存档
		$('#form').css('display', 'block')
	}


	// 初始化
	var parent = document.getElementById('parent')
	var obj = new Game(parent)
	obj.Init()
	renew = true

	// 开始游戏
	var init = document.getElementById('init')
	init.onclick = function() {
		if (status) {
			obj.End(function() {
				alert('游戏已结束，请重新开始')
			})
			$('#form').css('display', 'none')
		} else {
			if (StartGame) {
				obj.Begin()
				renew = false
				StartGame = false
			} else {
				alert('游戏已开始请不要重复点击开始游戏按钮')
			}
		}
	}

	// 重新开始
	var again = document.getElementById('again')
	again.onclick = function() {
		obj.End(function() {})
		$('#form').css('display', 'none')
		StartGame = true
		parent.innerHTML = ''
		obj.Init()
		status = false
		if (status) {
			renew = false
		} else {
			renew = true
		}
	}

	// 暂停
	var stop = document.getElementById('stop')
	stop.onclick = function() {
		if (status) {
			obj.End(function() {
				alert('游戏已结束，请重新开始')
			})
			$('#form').css('display', 'none')
		} else {
			if (renew) {
				alert('游戏刚开始，不能暂停')
			} else {
				obj.End(function() {
					alert('游戏已暂停')
				})
				$('#form').css('display', 'none')
				StartGame = true
				status = false
			}
		}
	}

	// 难度  简单/普通/困难
	var txt = document.getElementById('txt')
	var simple = document.getElementById('simple')
	simple.onclick = function() {
		if (status) {
			alert('游戏已结束，请重新开始时调整难度')
		} else {
			if (!renew) {
				alert('游戏已开始，请重新开始时调整难度')
			} else {
				txt.innerHTML = '目前是<span id="nd">简单</span>难度'
				degree = 32
			}
		}
	}
	var common = document.getElementById('common')
	common.onclick = function() {
		if (status) {
			alert('游戏已结束，请重新开始时调整难度')
		} else {
			if (!renew) {
				alert('游戏已开始，请重新开始时调整难度')
			} else {
				txt.innerHTML = '目前是<span id="nd">普通</span>难度'
				degree = 28
			}
		}
	}
	var hard = document.getElementById('hard')
	hard.onclick = function() {
		if (status) {
			alert('游戏已结束，请重新开始时调整难度')
		} else {
			if (!renew) {
				alert('游戏已开始，请重新开始时调整难度')
			} else {
				txt.innerHTML = '目前是<span id="nd">困难</span>难度'
				degree = 20
			}

		}
	}

	// 排行榜
	// 获取设置 local ，name fraction date done 
	// 根本 local 数据来渲染排行榜
	romance()

	function romance() {
		var $obj = $('.table')
		score = 0
		$obj.html('')
		var $newEle = $('<tr><td>名次</td><td>姓名</td><td>分数</td><td>时间</td><td>难度</td></tr>')
		$obj.append($newEle)
		var arr = getArr()
		arr = sort(arr)
		$.each(arr, function(i, ele) {
			var $newEle = $('<tr><td>' + (i + 1) + '</td><td>' + ele.name + '</td><td>' + ele.fraction + '</td><td>' + ele.date +
				'</td><td>' + ele.nd + '</td></tr>')
			$obj.append($newEle)
		})
	}

	function getArr() {
		return JSON.parse(localStorage.getItem('Arr')) || []
	}

	// 当游戏结束，姓名输入完之后储存数据
	$('.btn1').on('click', function() {
		$('#form').css('display', 'none')
		var Value = $(this).siblings('.form-group').find('.form-control').val()
		var arr = getArr()
		var newArr = {}
		newArr.name = Value || '无名氏'
		newArr.fraction = score
		newArr.date = new Date()
		newArr.nd = $('#nd').text()
		arr.push(newArr)
		localStorage.setItem('Arr', JSON.stringify(arr))
		romance()
	})
	
	$('.btn2').on('click', function() {
		localStorage.removeItem('Arr')
		romance()
	})

	// 数据进行排序
	function sort(arr) {
		var len = arr.length - 1
		for (var i = 0; i < len; i++) {
			for (var j = len; j > 0; j--) {
				if (arr[j].fraction >= arr[j - 1].fraction) {
					var data = arr[j - 1]
					arr[j - 1] = arr[j]
					arr[j] = data
				}
			}
		}
		return arr
	}

})(window, undefined)
