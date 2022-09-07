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
const bedrijfsnaamEl = document.querySelector('#bedrijfsnaam');
const functieEl = document.querySelector('#functie');
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
const checkBedrijfsnaam = () => {
    let valid = false;
    const bedrijfsnaam = bedrijfsnaamEl.value.trim();

    if (!isRequired(bedrijfsnaam)) {
        showGoed(bedrijfsnaamEl);
    } 
    else {
        showGoed(bedrijfsnaamEl);
        valid = true;
    }
    return valid;
};
const checkFunctie = () => {
    let valid = false;
    const functie = functieEl.value.trim();

    if (!isRequired(functie)) {
        showGoed(functieEl);
    } 
    else {
        showGoed(functieEl);
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
        isEmailValid && 
        isTelefoonValid;

    if (isFormValid) {
        location.href = 'index.html';
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
        case 'bedrijfsnaam':
            checkBedrijfsnaam();
            break;
        case 'functie':
            checkFunctie();
            break;      
    }
});


// Textarea max aantal tekens
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


// Formulier exit validatie
let naam = '';
let emailadres = '';
let telefoon = '';

updateNaam = () => {
    naam = document
        .getElementById('naam').value;
}

updateEmailadres = () => {
    emailadres = document
        .getElementById('emailadres').value;
}

updateTelefoon = () => {
    telefoon = document
        .getElementById('telefoon').value;
}

updateBericht = () => {
    bericht = document
        .getElementById('bericht').value;
}

window.addEventListener('beforeunload', 
                        function (e) {

    if (naam !== '' ||
        emailadres !== '' ||
        telefoon !== '' ||
        bericht !== '') {

        e.preventDefault();
        e.returnValue = '';
    }
});

// Copyright datum
function date() {
    document.getElementById("datum").innerHTML = new Date().getFullYear()
    document.getElementById("datum2").innerHTML = new Date().getFullYear()

  }

  
  // Theme switcher
   // function to set a given theme/color-scheme
   function setTheme(themeName) {
    localStorage.setItem('theme', themeName);
    document.documentElement.className = themeName;
}

// function to toggle between light and dark theme
function toggleTheme() {
    if (localStorage.getItem('theme') === 'theme-dark') {
        setTheme('theme-light');
    } else {
        setTheme('theme-dark');
    }
}

// Immediately invoked function to set the theme on initial load
(function () {
    if (localStorage.getItem('theme') === 'theme-dark') {
        setTheme('theme-dark');
        document.getElementById('slider').checked = false;
    } else {
        setTheme('theme-light');
      document.getElementById('slider').checked = true;
    }
})();