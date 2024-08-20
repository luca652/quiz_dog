import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["tab"]

  connect() {
    // Load the last active tab from localStorage
    const activeTab = localStorage.getItem("activeTab");
    if (activeTab) {
      this.showTab(activeTab);
    }
  }

  setActiveTab(event) {
    // Store the active tab in localStorage
    const target = event.currentTarget.getAttribute("data-bs-target");
    localStorage.setItem("activeTab", target);
  }

  showTab(target) {
    // Activate the stored tab
    const tabElement = this.tabTargets.find(tab => tab.getAttribute("data-bs-target") === target);
    if (tabElement) {
      const bootstrapTab = new bootstrap.Tab(tabElement);
      bootstrapTab.show();
    }
  }
}
