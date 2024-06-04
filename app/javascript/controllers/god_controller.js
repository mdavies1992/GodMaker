import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["name", "alignment", "domain"];

  connect() {
    console.log("God Connected");
  }

  namecheck(event) {
    const nischecked = event.currentTarget.checked
    console.log(nischecked);
    if (nischecked){
      this.nameTarget.classList.remove("d-none")
    } else {
      this.nameTarget.classList.add("d-none")
    }
   }

   alignmentcheck(event) {
    const aischecked = event.currentTarget.checked
    console.log(aischecked);
    if (aischecked){
      this.alignmentTarget.classList.remove("d-none")
    } else {
      this.alignmentTarget.classList.add("d-none")
    }
   }

   domaincheck(event) {
    const ischecked = event.currentTarget.checked
    console.log(ischecked);
    if (ischecked){
      this.domainTarget.classList.remove("d-none")
    } else {
      this.domainTarget.classList.add("d-none")
    }
   }

}
