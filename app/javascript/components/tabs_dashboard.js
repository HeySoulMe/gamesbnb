const tabsDashboard = () => {
	// Select a `<ul>` element
	const tabs = document.querySelectorAll(".tab-underlined");
	tabs.forEach((clickedTab) => {
  		clickedTab.addEventListener('click', (event) => {
        event.preventDefault();
        tabs.forEach((tab) => { tab.classList.remove("active")})
  			clickedTab.classList.toggle("active");
        const divCards = document.querySelectorAll(".div-cards");
        divCards.forEach((divCard) => { divCard.classList.add("d-none")});
  			const divCardActive = document.querySelector(`[data-content-id="${clickedTab.id}"]`);
        console.log(divCardActive)
        divCardActive.classList.remove("d-none");
		});
	});
};

export { tabsDashboard };
