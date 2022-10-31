import { Component, OnInit } from '@angular/core';
import { Firestore, collectionData, collection } from '@angular/fire/firestore';

// Listener de cambios en la tabla
import { Observable } from 'rxjs';

interface client{
  name: string,
  city: string,
  tel: string,
}

@Component({
  selector: 'app-clients',
  templateUrl: './clients.component.html',
  styleUrls: ['./clients.component.css']
})
export class ClientsComponent implements OnInit {
  // El scope de esta variable es hasta el componente y su html, ya que el component.ts los enlaza. También los objetos children lo heredan
  clients: Observable<client[]>;

  constructor(fs: Firestore) {
    const dbClient = collection(fs, 'Clients')
    this.clients = collectionData(dbClient) as Observable<client[]>;
  }

  ngOnInit(): void {
  }

}
