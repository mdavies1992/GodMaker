import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["name", "alignment", "race", "profession", "gender"];

  connect() {
    console.log("Follower Connected");
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

   gendercheck(event) {
    const gischecked = event.currentTarget.checked
    console.log(gischecked);
    if (gischecked){
      this.genderTarget.classList.remove("d-none")
    } else {
      this.genderTarget.classList.add("d-none")
    }
   }

   racecheck(event) {
    const ischecked = event.currentTarget.checked
    console.log(ischecked);
    if (ischecked){
      this.raceTarget.classList.remove("d-none")
    } else {
      this.raceTarget.classList.add("d-none")
    }
   }

   professioncheck(event) {
    const pischecked = event.currentTarget.checked
    console.log(pischecked);
    if (pischecked){
      this.professionTarget.classList.remove("d-none")
    } else {
      this.professionTarget.classList.add("d-none")
    }
   }
}
