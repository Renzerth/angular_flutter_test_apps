import { Component } from '@angular/core';

// Importar esta línea tras instalar modulo @
import { Firestore, collectionData, collection, CollectionReference, addDoc } from '@angular/fire/firestore';
import { Observable } from 'rxjs';

import { FormBuilder } from '@angular/forms'

// https://github.com/angular/angularfire
// Template de la estructura de los campos que se tienen en la db -- Debe estar arriba del decorador @Component
interface Item {
  name: string,
  profession: string,
  age: Number,
};

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'testProject';
  item$: Observable<Item[]>;
  checkoutForm: any
  dbRef: any
  miTabla: string = "items";

  constructor(fs: Firestore, form: FormBuilder) {
    this.dbRef = collection(fs, "items");
    this.item$ = collectionData(this.dbRef) as Observable<Item[]>;

    this.checkoutForm = form.group({
      name: '',
      profession: '',
      age: '',
  })

  }
  
  ngOnInit(): void {
  }

  onSubmit(datosCliente: any){
    this.checkoutForm.reset();

    console.warn('Submitted', datosCliente)
    console.log('Nombre: ' +  datosCliente.name)
    console.log('Profesión: ' +  datosCliente.profession)
    console.log('Edad: ' +  datosCliente.age + "años")
    
    this.addDatos(datosCliente)
    }

    addDatos(item:Item){
        console.log("datos a insertar: " + item)
        let dato:Item = item as Item;

        addDoc(this.dbRef, dato) // root/items
        console.log("Document written with ID: ", this.dbRef.id); // setDoc(doc
        //this.db.collection(this.miTabla);
        //this.db.add(dato)
    }

}
