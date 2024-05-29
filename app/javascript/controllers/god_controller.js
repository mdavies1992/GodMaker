import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["name"];

  connect() {
    console.log("God Connected");
  }

  namecheck(event) {
    const name = event.currentTarget.value
    console.log(name);
   }


}
