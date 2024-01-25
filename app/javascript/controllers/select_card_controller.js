import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="controller"
export default class extends Controller {

  static targets = ['card']

  connect() {
    console.log("Select card controller present!")
  }

  select(event) {
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

  deselect(event) {
    console.log("working")
    const clickedCard = event.target.closest(".venue-card");
    console.log(clickedCard.classList.contains("notselected"));
    this.cardTargets.forEach(card => {
      console.log(card.classList);
    })
    if (clickedCard.classList.contains("notselected")) {
      this.cardTargets.forEach(card => {
        card.classList.remove("selected");
        card.classList.remove("notselected");
      })
    }


  }
}
