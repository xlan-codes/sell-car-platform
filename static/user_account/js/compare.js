function addForCompare(vehicle_id) {
  let comparables = [];
  let compared = [];
  if (localStorage.getItem("comparables")) {
    compared = JSON.parse(localStorage.getItem("comparables"));
    compared.forEach((vehicle) => {
      comparables.push(vehicle);
    });
  }
  comparables.push(vehicle_id);
  comparables = [...new Set(comparables)];
  if (comparables.length < 5) {
    localStorage.setItem("comparables", JSON.stringify(comparables));
  }
  generateLink();

  checkForList(localStorage.getItem('comparables'))
}

//TODO Fix
//First vehicle get removed
function removeCompare(id) {
  const storage = JSON.parse(localStorage.getItem("comparables"));
  const updatedStorage = storage.filter((e) => e !== id);
  localStorage.setItem("comparables", JSON.stringify(updatedStorage));
  location.href = "/user/compare?comparables=" + JSON.stringify(updatedStorage)
}

const getComparables = () => {
  let comparables = [];
  let list;
  localStorage.getItem("comparables")
    ? (comparables = JSON.parse(localStorage.getItem("comparables")))
    : (comparables = null);
  if (comparables) {
    list = JSON.stringify(comparables);
    return list;
  }
  else {
      return ''
  }
};

function generateLink() {
  if (document.getElementById("compareLinkTag")) {
    let link = document.getElementById("compareLinkTag");
    link.parentElement.removeChild(link);
  }
  let link_div = document.getElementById("compareLink");
  let anchor = document.createElement("a");
  let href = "/user/compare?comparables=" + getComparables();
  anchor.setAttribute("href", href);
  anchor.setAttribute("id", "compareLinkTag");
  anchor.classList.add("m-auto", "black-link", "category-name", "p-1");
  anchor.innerHTML = "Krahaso";
  link_div.appendChild(anchor);
}

//only first button get hidden

// function checkCompareNumber(comparables) {
//     if (comparables?.length > 3) {
//         document.getElementById("addCompare").hidden = true
//     }
//     else {
//         document.getElementById("addCompare").hidden = false
//     }
// }


const checkForList = (comp) => {
  debugger
  list = JSON.parse(comp)
  btn = document.getElementById('compareLink')

  if (list.length > 0) {
    btn.classList.add('list_not_empty');
  }
  else {
    btn.classList.remove('list_not_empty');
  }
}