const naamEl = document.querySelector('#naam');
const emailadresEl = document.querySelector('#emailadres');
const watvoorvraagEl = document.querySelector('#watvoorvraag');
const berichtEl = document.querySelector('#bericht');

const form = document.querySelector('#feedbackformulier');


const checkNaam = () => {
    let valid = false;
    const min = 3,
    max = 25;
    const naam = naamEl.value.trim();

    if (!isRequired(naam)) {
        showFout(naamEl, 'Vul je voor- en achternaam in.');
    } else if (!isBetween(naam.length, min, max)) {
        showFout(naamEl, `Je naam moet tussen de ${min} en ${max} tekens bevatten.`);
    } else {
        showGoed(naamEl);
        valid = true;
    }
    return valid;
};


const checkEmail = () => {
    let valid = false;
    const emailadres = emailadresEl.value.trim();
    if (!isRequired(emailadres)) {
        showFout(emailadresEl, 'Vul je e-mailadres in.');
    } else if (!isEmailValid(emailadres)) {
        showFout(emailadresEl, 'Dit is geen geldig e-mailadres.');
    } else {
        showGoed(emailadresEl);
        valid = true;
    }
    return valid;
};


const checkWatVoorVraag = () => {
    let valid = false;
    const watvoorvraag = watvoorvraagEl.value.trim();
    if (!isRequired(watvoorvraag) === '--Maak hier een keuze--') {
        showFout(watvoorvraagEl, 'Maak een keuze.');
    } else {
        showGoed(watvoorvraagEl);
        valid = true;
    }
    return valid;
};


const checkBericht = () => {
    let valid = false;
    const min = 1, 
    max = 20;
    const bericht = berichtEl.value.trim();

    if (!isBetween(bericht.length, min, max)) {
        showFout(berichtEl, `Je bericht mag maximaal ${max} tekens bevatten.`);
    } else {
        showGoed(berichtEl);
        valid = true;
    }
    return valid;
};


const isEmailValid = (emailadres) => {
    const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(emailadres);
};


const isRequired = value => value === '' ? false : true;
const isBetween = (length, min, max) => length < min || length > max ? false : true;


const showFout = (input, message) => {
    
    const formField = input.parentElement;

    formField.classList.remove('goed');
    formField.classList.add('fout');

    const fout = formField.querySelector('small');
    fout.textContent = message;
};


const showGoed = (input) => {
    
    const formField = input.parentElement;
    
    formField.classList.remove('fout');
    formField.classList.add('goed'); 

    
    const fout = formField.querySelector('small');
    fout.textContent = '';
};


form.addEventListener('submit', function (e) {
    e.preventDefault();

    let isNaamValid = checkNaam(),
        isEmailValid = checkEmail(),
        isWatVoorVraagValid = checkWatVoorVraag(),
        isBerichtValid = checkBericht();

    let isFormValid = isNaamValid &&
        isEmailValid &&
        isWatVoorVraagValid &&
        isBerichtValid;

    if (isFormValid) {

    }
});

form.addEventListener('input', function (e) {
    switch (e.target.id) {
        case 'naam':
            checkNaam();
            break;
        case 'emailadres':
            checkEmail();
            break;
        case 'watvoorvraag':
            checkWatVoorVraag();
            break;
        case 'bericht':
            checkBericht();
            break;
    }
});


