import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="about-carousel"
export default class extends Controller {
  connect() {
    console.log("Connected!");
    let elements = [this.card1Target, this.card2Target];
    console.log(elements);

    elements.forEach((el) => {
      const minPerSlide = 2
      let next = el.nextElementSibling
      for (let i=1; i<minPerSlide; i++) {
          if (!next) {
              // wrap carousel by using first child
            next = elements[0]
          }
          let cloneChild = next.cloneNode(true)
          el.appendChild(cloneChild.children[0])
          next = next.nextElementSibling
      }
    })
  }
}
