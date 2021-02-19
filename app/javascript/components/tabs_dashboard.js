const tabsDashboard = () => {
	// Select a `<ul>` element
	const tabs = document.querySelectorAll(".tab-underlined");
	tabs.forEach((element) => {
  		element.addEventListener('click', (event) => {
  			element.classList.toggle("active");
  			console.log(element);
  			const contents = document.querySelectorAll(`[data-content-id="${element.id}"]`);
  			console.log(contents)
  			contents.forEach((card) => {
  				card.classList.toggle('d-none');
  			});
		});
	});
};

export { tabsDashboard };
