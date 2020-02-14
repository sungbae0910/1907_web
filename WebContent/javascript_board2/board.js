/**
 * 
 */

let seq; //시퀀스
let db;

function loadDB(){
	let temp = localStorage.getItem('board');
	seq = localStorage.getItem('seq');
	if(temp == null){
		db = [];
	}else{
		db = JSON.parse(temp);
	}
	if(seq == null){
		seq = 0;
	}
}

function storeDB(){
	let tempDB = JSON.stringify(db);
	localStorage.setItem('board', tempDB);
	localStorage.setItem('seq', seq);
}

function Data(mName, subject, content, serial, hit, mDate){
	this.mName=mName;
	this.subject=subject;
	this.content=content;
	this.serial=serial;
	this.hit=hit;
	this.mDate=mDate;
}

if(brd.btnSave != null){
	brd.btnSave.onclick = function(){
		loadDB();
		let tempDate = new Date();
		let now = tempDate.getFullYear()+ '-' + (tempDate.getMonth()+1)+'-'+tempDate.getDate();
		seq++;
		let date = new Data(brd.mName.value, brd.subject.value, brd.content.value, seq, 0, now);
		db.push(date);
		storeDB();
	}
}

if(brd.btnSelect != null){ //목록을 눌렀을때 
	brd.btnSelect.onclick = function(){ 
		location.href='select.jsp';
	}
}

if(brd.btnInit != null){  
	brd.btnInit.onclick = function(){
		let yn = confirm("데이터베이스를 초기화하시겠습니까?");
		if(yn){
			localStorage.removeItem('board');
			localStorage.removeItem('seq');
			db = [];
		}
	}
}

if(brd.btnInsert != null){
	brd.btnInsert.onclick=function(){
		location.href='insert.jsp';
	}
}
function toHTML(d){
	let str =`
	<div class='items'>
		<span class='serial'>${d.serial}</span>
		<span class='subject'><a href='#' onclick='view(${d.serial})'>${d.subject}</a></span>
		<span class='mName'>${d.mName}</span>
		<span class='mDate'>${d.mDate}</span>
		<span class='hit'>${d.hit}</span>
		</div>`;
		return str;
}

function view(serial){
	for(let i=0; i<db.length; i++){
		if(db[i].serial==serial){
			let data = db[i];
			data.hit++;
			db[i]=data;
			storeDB();
			break;
		}
	}
	localStorage.setItem('serial', serial);
	location.href='view.jsp';
}
if(brd.btnSearch != null){
	brd.btnSearch.onclick = function(){
		let list = document.getElementById('list');
		let findStr = brd.findStr.value;
		localStorage.setItem('findStr', findStr);
		loadDB();
		list.innerHTML='';
		for(d of db){
			if(d.subject.indexOf(findStr)>=0 || d.content.indexOf(findStr)>=0){
				list.innerHTML+=toHTML(d);
			}
		}
	}
}
if(brd.btnDelete != null){
	brd.btnDelete.onclick=function(){
		let yn = confirm('정말 삭제하시겠습니까?');
		if(yn){
			let serial = brd.serial.value;
			for(let i=0; i<db.length; i++){
				if(db[i].serial == serial){
					db.splice(i,1);
					storeDB();
					break;
				}
			}
			location.href='select.jsp';
		}
	}
}

if(brd.btnModify != null){
	brd.btnModify.onclick = function(){
		let serial = brd.serial.value;
		localStorage.setItem('serial', serial);
		location.href='modify.jsp';
	}
}

if(brd.btnUpdate != null){
	brd.btnUpdate.onclick = function(){
		let yn = confirm('정말 수정 하실건가요?');
		if(yn){
			let serial = brd.serial.value;
			for(let i=0; i<db.length; i++){
				if(db[i].serial == serial){
					let data = db[i];
					data.subject = brd.subject.value;
					data.content = brd.content.value;
					db[i] = data;
					storeDB();
					break;
				}
			}
			location.href='select.jsp';
		}
	}
}