let languagesContainers=document.querySelectorAll('.languageContainer');
let errors;
let errorTimer;

const leftRow=document.querySelector('#leftImg');
const rightRow=document.querySelector('#rightImg');
const nameInput=document.querySelector('#name');
const emailInput=document.querySelector('#email');
const tlfoInput=document.querySelector('#tlfo');
const messageImput=document.querySelector('#message');
const sendButton=document.querySelector('#sendButton');
const affairInput=document.querySelector('#affair');
const errorMessage=document.querySelector('.errorMessage');
const galleryLeftRow=document.querySelectorAll('.galleryLeftRow');
const galleryRightRow=document.querySelectorAll('.galleryRightRow');
const projectContainers=document.querySelectorAll('.projectContainer');
const mobileMenuIcon=document.querySelector('#mobileMenuIcon');
const header=document.querySelector('header');
const morebutton=document.querySelector('.moreButton');
const lessButton=document.querySelector('.lessButton');

if(screen.width<=500){
	languagesContainers[3].classList.add('hidde');
	languagesContainers[4].classList.add('hidde');
	morebutton.classList.remove('hidde');
	for(let i=2;i<projectContainers.length;i++) projectContainers[i].classList.add('hidde');
	
}

if(sessionStorage.getItem('form') =='1'){
	console.log('Formulario enviado');
	sessionStorage.clear();
}


//Events listeners
rightRow.addEventListener('click',function(){
	languageGallery('right');
})
leftRow.addEventListener('click',function(){
	languageGallery('left');
})
sendButton.addEventListener('click',checkForm);
galleryLeftRow.forEach(row=>{
	row.addEventListener('click',function(){
		projectsGallery(row, 'left');
	});
})
galleryRightRow.forEach(row=>{
	row.addEventListener('click',function(){
		projectsGallery(row, 'right');
	});
})
mobileMenuIcon.addEventListener('click', displayMenu);
morebutton.addEventListener('click', displayContent);
lessButton.addEventListener('click', displayContent);



//Functions
function checkForm(e){
	errors=false;
	if(nameInput.value.length==0 || emailInput.value.length==0 || tlfoInput.value.length==0 || messageImput.value.length==0 || affairInput.value.length==0){
		errors=true;
		setErrorMessage('Los campos solicitados no pueden estar vacios');
	}

	if(!/^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i.test(email.value.trim()) && errors!=true){
		errors=true;
		setErrorMessage('El formato del email es incorrecto');
	}
	if(isNaN(tlfoInput.value) && errors!=true){
		errors=true;
		setErrorMessage('Solo se admiten números en el número de teléfono');
	}
	if(errors==true) e.preventDefault();
}

function setErrorMessage(message){
	clearTimeout(errorTimer);
	errorMessage.textContent=message;
	errorMessage.classList.remove('hidde');
	errorTimer=setTimeout(function(){
		errorMessage.classList.add('hidde');
	},4000);
}

function languageGallery(direction){
	if(direction=='right'){
		languagesContainers[0].classList.add('hidde');
		document.getElementById('languages').appendChild(languagesContainers[0]);

		languagesContainers[screen.width>500 ? 5 : 3].classList.remove('hidde');

	}else{
		languagesContainers[totalLanguages - 1].classList.remove('hidde');
		document.getElementById('languages').insertAdjacentElement('afterbegin',languagesContainers[totalLanguages - 1]);
		languagesContainers[screen.width>500 ? 4 : 2].classList.add('hidde');
	}
	languagesContainers=document.querySelectorAll('.languageContainer');
}

function projectsGallery(row,direction){
	let projectGallery=row.parentNode.parentNode;
	let galleryImg=projectGallery.querySelector('.galleryContent').querySelectorAll('img');
	
	if(direction=='right'){
		galleryImg[0].classList.add('hidde');
		projectGallery.querySelector('.galleryContent').appendChild(galleryImg[0]);
		galleryImg=projectGallery.querySelector('.galleryContent').querySelectorAll('img');
		galleryImg[0].classList.remove('hidde');
	}else{
		galleryImg[0].classList.add('hidde');
		galleryImg[galleryImg.length-1].classList.remove('hidde');
		projectGallery.querySelector('.galleryContent').insertAdjacentElement('afterbegin',galleryImg[galleryImg.length-1]);
		
	}
}

function displayMenu(){
	if(header.classList.contains('closeMenu')){
		header.classList.replace('closeMenu','openMenu');
	}else{
		header.classList.replace('openMenu','closeMenu');
	}
}

function displayContent(){
	if(!morebutton.classList.contains('hidde')){
		for(let i=2;i<projectContainers.length;i++) projectContainers[i].classList.remove('hidde');
		morebutton.classList.add('hidde');
		lessButton.classList.remove('hidde');
	}else{
		for(let i=2;i<projectContainers.length;i++) projectContainers[i].classList.add('hidde');
		morebutton.classList.remove('hidde');
		lessButton.classList.add('hidde');
	}
}




		      