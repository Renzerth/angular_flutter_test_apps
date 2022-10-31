import { isDevMode, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { ReactiveFormsModule } from '@angular/forms'

// Agregar la ruta para sacar la variable de entorno
// Asignar la ruta relativa a la variable 'environments'
import { environment } from '../environments/environment'
import { provideFirebaseApp, initializeApp } from '@angular/fire/app';

//Emulator
// https://firebase.google.com/docs/emulator-suite/connect_firestore#web-version-9
// https://stackoverflow.com/questions/69203459/angularfiremodule-has-not-been-provided-using-v7-0-1-and-new-method-of-initializ
//import { getAuth, provideAuth, connectAuthEmulator } from '@angular/fire/auth';
import { getFirestore, provideFirestore, connectFirestoreEmulator, enableIndexedDbPersistence } from '@angular/fire/firestore';
//import { getStorage, provideStorage, connectStorageEmulator } from '@angular/fire/storage';
//import { getAnalytics, provideAnalytics } from '@angular/fire/analytics';
//import { getFunctions, provideFunctions, connectFunctionsEmulator} from '@angular/fire/functions';

// Firebase Emulator- ANGULAR 7
// https://stackoverflow.com/questions/55239832/using-firebase-emulator-with-angularfire
// https://jsmobiledev.com/article/firebase-emulator/

// Emulators:
// https://github.com/angular/angularfire/blob/master/docs/emulators/emulators.md
//import { USE_EMULATOR as USE_AUTH_EMULATOR } from '@angular/fire/compat/auth';
//import { USE_EMULATOR as USE_DATABASE_EMULATOR } from '@angular/fire/compat/database';
import { USE_EMULATOR as USE_FIRESTORE_EMULATOR, SETTINGS as FIRESTORE_SETTINGS } from '@angular/fire/compat/firestore';
//import { USE_EMULATOR as USE_FUNCTIONS_EMULATOR } from '@angular/fire/compat/functions';

// My components
import { ClientsComponent } from './pages/clients/clients.component';
import { ProductsComponent } from './pages/products/products.component';
import { E404Component } from './errors/e404/e404.component';

import { AngularFirestoreModule } from '@angular/fire/compat/firestore';

@NgModule({
  declarations: [
    AppComponent,
    ClientsComponent,
    ProductsComponent,
    E404Component,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    // Firebase
    provideFirebaseApp(() => {
      const firebaseApp = initializeApp(environment.firebase)
      return (firebaseApp);
    }),

    provideFirestore( () => {
      const firestore = getFirestore()
      if ( !environment.production )
        connectFirestoreEmulator( firestore, 'localhost' , 8080 );
      return ( firestore );
  })
],
  providers: [
    // ... Existing Providers
    //{ provide: USE_AUTH_EMULATOR, useValue: environment.useEmulators ? ['localhost', 9099] : undefined },
    //{ provide: USE_DATABASE_EMULATOR, useValue: environment.useEmulators ? ['localhost', 9000] : undefined },
    { provide: USE_FIRESTORE_EMULATOR, useValue: environment.useEmulators ? ['localhost', 8080] : undefined },
    //{ provide: USE_FUNCTIONS_EMULATOR, useValue: environment.useEmulators ? ['localhost', 5001] : undefined },
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
