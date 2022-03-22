// Hamburger menu button animatie
const menuBtn = document.querySelector('.menu-btn');
let menuOpen = false;

menuBtn.addEventListener('click', () => {
  if(!menuOpen) {
    menuBtn.classList.add('open');
    menuOpen = true;
  } else {
    menuBtn.classList.remove('open');
    menuOpen = false;
  }
});

// Hamburger menu + fadeout
  const uitKlapMenu = () => {
    let element = document.getElementById("klapmenu");
    element.classList.toggle("klapmenu-expand");
  } 

  const fadeOut = () => {
    let element = document.getElementById("main");
    element.classList.toggle("fadeout");
  }

  const circleMenu = () => {
    let element = document.getElementById("circlemenu");
    element.classList.toggle("circlemenu-expand");
  }


// Formulier validatie
const naamEl = document.querySelector('#naam');
const emailadresEl = document.querySelector('#emailadres');
const telefoonEl = document.querySelector('#telefoon');
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
const checkTelefoon = () => {
    let valid = false;
    const telefoon = telefoonEl.value.trim();
    if (!isRequired(telefoon)) {
        showFout(telefoonEl, 'Vul je telefoonnummer in.');
    } else if (!isTelefoonValid(telefoon)) {
        showFout(telefoonEl, 'Dit is geen geldig telefoonnummer.');
    } else {
        showGoed(telefoonEl);
        valid = true;
    }
    return valid;
};

const isEmailValid = (emailadres) => {
    const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(emailadres);
};
const isTelefoonValid = (telefoon) => {
    const re = /^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/;
    return re.test(telefoon);
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
        isTelefoonValid = checkTelefoon();

    let isFormValid = isNaamValid &&
        isEmailValid && isTelefoonValid;

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
        case 'telefoon':
            checkTelefoon();
            break;
    }
});

const limitChar = (element) => {
    const maxChar = 200;
    
    let ele = document.getElementById(element.id);
    let charLen = ele.value.length;
    
    let p = document.getElementById('charCounter');
    p.innerHTML = maxChar - charLen + ' tekens resterend';
    
    if (charLen > maxChar) 
    {
        ele.value = ele.value.substring(0, maxChar);
        p.innerHTML = 0 + ' tekens resterend'; 
    }
}




/*
window.addEventListener("beforeunload", function (e) {
    let confirmationMessage = '';

    (e || window.event).returnValue = confirmationMessage; //Gecko + IE
    return confirmationMessage; //Gecko + Webkit, Safari, Chrome etc.
}); 

const formSubmitting = false;
const setFormSubmitting = function() { formSubmitting = true; };

window.onload = function() {
    window.addEventListener("beforeunload", function (e) {
        if (formSubmitting) {
            return undefined;
        }

        var confirmationMessage = 'It looks like you have been editing something. '
                                + 'If you leave before saving, your changes will be lost.';
        
        (e || window.event).returnValue = confirmationMessage; //Gecko + IE
        return confirmationMessage; //Gecko + Webkit, Safari, Chrome etc.
    });
}; */




// Formulier exit validatie

// Variables to store the input text
let fname = '';
let lname = '';
let subject = '';

// Functions to update the input text
updateFname = () => {
    fname = document
        .getElementById('fname').value;
}

updateLname = () => {
    lname = document
        .getElementById('lname').value;
}

updateSubject = () => {
    subject = document
        .getElementById('subject').value;
}

// Event listener for the 
// 'beforeunload' event
window.addEventListener('beforeunload', 
                        function (e) {

    // Check if any of the input
    // fields are filled
    if (fname !== '' ||
        lname !== '' ||
        subject !== '') {

        // Cancel the event and
        // show alert that the unsaved
        // changes would be lost
        e.preventDefault();
        e.returnValue = '';
    }
});