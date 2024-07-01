import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["type"];

  connect() {
    console.log("Artifact Connected");
  }

  typecheck(event) {
    const nischecked = event.currentTarget.checked
    console.log(nischecked);
    if (nischecked){
      this.typeTarget.classList.remove("d-none")
    } else {
      this.typeTarget.classList.add("d-none")
    }
   }

}
