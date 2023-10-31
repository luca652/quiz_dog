import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="controller"
export default class extends Controller {

  static targets = ['card']

  connect() {
    console.log("ci sono!")
    this.cardTargets.forEach(card => {
      console.log(card.id);
    })
    console.log("targets: ", this.cardTargets)
    console.log("this: ", this)
  }

  select(event) {
    console.log("targets (#select): ", this.cardTargets)
    const url = event.target.href;
    let number = (url.split("#"))
    number = number[number.length - 1];

    this.cardTargets.forEach(card => {
      if (card.id === number) {
        card.classList.remove("notselected")
        card.classList.add("selected");
      } else {
        card.classList.remove("selected");
        card.classList.add("notselected")
      }
    });
  }
}
