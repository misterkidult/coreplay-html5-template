verificationData = (data) ->
	v = false
	return data.valid()

$ ->
	$('#formLogin').validate
		onclick: false
		ignore: ':hidden:not(.hasvalidate)'
		showErrors: (errorMap, errorList) ->
			if typeof errorList[0] == 'object'
				alert errorList[0].message
			$('#formRegisterDataform .error').removeClass 'error'
			$.each errorList, (index, value) ->
				$(value.element).addClass 'error'
				return
			return
		onfocusout: false
		onkeyup: false
		focusCleanup: true
		focusInvalid: false
		rules:
			'loginEmail':
				required: true
				email: true
			'loginPassword': required: true
		messages:
			'loginEmail':
				required:"請輸入email",
				email: "請輸入正確的email"
			'loginPassword': "請輸入密碼"

	$('#formRegister').validate
		onclick: false
		ignore: ':hidden:not(.hasvalidate)'
		showErrors: (errorMap, errorList) ->
			if typeof errorList[0] == 'object'
				alert errorList[0].message
			$('#formRegisterDataform .error').removeClass 'error'
			$.each errorList, (index, value) ->
				$(value.element).addClass 'error'
				return
			return
		onfocusout: false
		onkeyup: false
		focusCleanup: true
		focusInvalid: false
		rules:
			'registerEmail':
				required: true
				email: true
		messages:
			'registerEmail':
				required:"請輸入email",
				email: "請輸入正確的email"

	$('#formRegisterDataform').validate
		onclick: false
		ignore: ':hidden:not(.hasvalidate)'
		showErrors: (errorMap, errorList) ->
			if typeof errorList[0] == 'object'
				alert errorList[0].message
			$('#formRegisterDataform .error').removeClass 'error'
			$.each errorList, (index, value) ->
				$(value.element).addClass 'error'
				return
			return
		onfocusout: false
		onkeyup: false
		focusCleanup: true
		focusInvalid: false
		rules:
			'username':
				required: true
				rangelength: [
					1
					10
				]
			'gender': required: true
			'id_number': TWIDCheck: true
			'year': required: true
			'month': required: true
			'date': required: true
			'phone':
				required: true
				phonecheck: true
			'county': required: true
			'district': required: true
			'addr':
				required: true
				rangelength: [
					1
					255
				]
			'password':
				required: true
				rangelength: [
					1
					50
				]
			'passwordConfirm':
				required: true
				equalTo: "#password"
				rangelength: [
					1
					50
				]
			'mystory': required: true
			'project': required: true
			'group': required: true
			'link':
				required: true
				rangelength: [
					1
					255
				]
			'mate_num': required: true
		messages:
			'username': '請輸入姓名(1-10字)'
			'gender': '請選擇性別'
			'id_number': '請填入正確的身分證字號'
			'year': '請選擇出生年'
			'month': '請選擇出生月'
			'date': '請選擇出生日'
			'phone':
				required: '請輸入手機號碼'
				phonecheck: '請輸入正確的手機號碼'
			'county': '請選擇縣市'
			'district': '請選擇地區'
			'addr': '請輸入戶籍地址(255字以內)'
			'password': '請輸入密碼(1-50字)'
			'passwordConfirm':'輸入密碼錯誤，請重新輸入'
			'mystory': '請上傳我的故事，僅限 PDF 和 WORD 檔案格式'
			'project': '請上傳旅行計畫，僅限 PDF 和 WORD 檔案格式'
			'group': '請選擇報名組別'
			'link': '請輸入相關作品連結'
			'mate_num': '請選擇旅伴人數'

	if parseQueryString().token
		$('input[name=mystory]').rules 'remove', 'required'
		$('input[name=project]').rules 'remove', 'required'
		$('input[name=password]').rules 'remove', 'required'
		$('input[name=passwordConfirm]').rules 'remove', 'required'

	return