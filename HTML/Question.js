fetch('Questions.json')
.then(response=>{
    if(!response.ok){
        throw new Error('Network response was not ok');
    }
    return response.json();
})
.then(data=>{
    const questionContainer = document.getElementById('question-container');
    const questionElement = document.getElementById('questions')
    const choicesElement = document.createElement('div');
    const submitButton = document.createElement('submit');
    const resultcontainer = document.createElement('resultcontainer');
    const resultElement = document.createElement('result');
    let currentQuestionIndex = 0;
    let score = 0;

function displayQuestion(){
    const currentQuestion = data[currentQuestionIndex];
    questionElement.textContent = currentQuestion.question;
    currentQuestion.choices.forEach(choice => {
        const li= document.createElement('li');
        const input = document.createElement('input');
        input.setAttribute('type','radio');
        input.setAttribute('name','choice');
        input.setAttribute('value',choice);
        li.appendChild(input);
        li.appendChild(document.createTextNode(choice));
        choicesElement.appendChild(li);

        
    });

    
}
