import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  connect() {
    console.log("Connected");
  }
  static targets = ["godInput"];

  togglegodInput() {
    if (this.checkboxTarget.checked) {
      this.godInputTarget.style.display = "block";
    } else {
      this.godInputTarget.style.display = "none";
    }
  }

  get checkboxTarget() {
    return this.targets.find("checkbox");
  }

  get godInputTarget() {
    return this.targets.find("input");
  }
}
