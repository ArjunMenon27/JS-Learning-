import { Component } from '@angular/core';

@Component({
  selector: 'app-root', 
  templateUrl: './app.html',
  standalone: false,
  styleUrl: './app.css'
})
export class App {
Name = 'Arjun';
userEmail = 'arjun@gmail.com';
isVerified = true;
message = '';
submitForm () {
  this.message = 'Form submitted successfully!';
}

inputValue = '';
}