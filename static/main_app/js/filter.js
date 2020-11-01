
function search() {
  location.href = changeBaseSearchHref();
}

function setVehicleType(type) {
  let filters_storage = getFiltersFromLocalStorage();
  filters_storage = {};
  filters_storage["type__tag"] = type;
  localStorage.setItem("filters", JSON.stringify(filters_storage));
  localStorage.setItem("vehicle_type", type)
  // changeBaseSearchHref()
}

function loadModelsForBaseSearch(make) {
  let filters_storage = getFiltersFromLocalStorage();
  filters_storage["engine_type__model__make__name"] = make.value;
  delete filters_storage["engine_type__model__name"];
  localStorage.setItem("filters", JSON.stringify(filters_storage));
  $("#baseSearchModel").load("/search", {
    filter_model_base: JSON.stringify(make.value),
  });
  // changeBaseSearchHref()
}

function modelBase(model) {
  let filters_storage = getFiltersFromLocalStorage();
  filters_storage["engine_type__model__name"] = model.value;
  delete filters_storage["engine_type__name"];
  localStorage.setItem("filters", JSON.stringify(filters_storage));
  // changeBaseSearchHref()
}

function priceBase(price, currency_id) {
  let curr = []
  let filters_storage = getFiltersFromLocalStorage();
  curr.push(document.getElementById('baseCurrHidden').value)
  filters_storage["price__lte"] = price.value;
  // filters_storage["currency__in"] = curr;
  localStorage.setItem("filters", JSON.stringify(filters_storage));
  // changeBaseSearchHref()
}

function conditionBase() {
  let filters_storage = getFiltersFromLocalStorage();
  let usedCond = document.getElementById("used");
  let newCond = document.getElementById("new");

  if (usedCond.checked && !newCond.checked) {
    filters_storage["condition_type__tag"] = "used";
    localStorage.setItem("filters", JSON.stringify(filters_storage));
  }
  if (!usedCond.checked && newCond.checked) {
    filters_storage["condition_type__tag"] = "new";
    localStorage.setItem("filters", JSON.stringify(filters_storage));
  }
  if (
    (usedCond.checked && newCond.checked) ||
    (!usedCond.checked && !newCond.checked)
  ) {
    delete filters_storage["condition_type__tag"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
  }
}

function resetFilters() {
  filters_storage = getFiltersFromLocalStorage();
  type = filters_storage["type__tag"] ? filters_storage["type__tag"] : "car";
  localStorage.setItem(
    "filters",
    JSON.stringify({ type__tag: type, order_by: "price" })
  );
  $("#filter-result").load("/search", {
    type__tag: JSON.stringify(type),
    order_by: JSON.stringify("price"),
  });
  setFilterDefaultText(Array.from(document.getElementsByClassName("filtersOptionChangeToAll")).map(e => e.id))
}

function changeOrder(orderOption) {
  console.log(orderOption.value);
  filters_storage = getFiltersFromLocalStorage();
  filters_storage["order_by"] = orderOption.value;
  loadWithAjax(filters_storage);
}

function getModels(make) {
  $("#includedModelModal").load("/search", {
    filter_model: JSON.stringify(make),
  });
}

function getEngies(model) {
  $("#includedEngineModal").load("/search", {
    filter_engine: JSON.stringify(model),
  });
}

function filterSeller() {
  let seller_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("seller-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      seller_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (seller_filters.length <= 0) {
    delete filters_storage["seller_filters"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["user__seller_type_id__in"] = seller_filters;
  loadWithAjax(filters_storage);
  // setFilterNewText("seller", )
}

function filterMake(make) {
  let filters_storage = getFiltersFromLocalStorage();
  filters_storage["engine_type__model__make__name"] = make;
  delete filters_storage["engine_type__model__name"];
  getModels(make);
  loadWithAjax(filters_storage);
  setFilterNewText("make", make);
}

function filterModel(model) {
  let filters_storage = getFiltersFromLocalStorage();
  filters_storage["engine_type__model__name"] = model;
  delete filters_storage["engine_type__name"];
  getEngies(model);
  loadWithAjax(filters_storage);
  setFilterNewText("model", model);
}

function filterEngine(engine) {
  let filters_storage = getFiltersFromLocalStorage();
  filters_storage["engine_type__name"] = engine;
  loadWithAjax(filters_storage);
  setFilterNewText("engine", engine);
}

function filterYear() {
  min = document.getElementById("min-year").value
    ? document.getElementById("min-year").value
    : null;
  max = document.getElementById("max-year").value
    ? document.getElementById("max-year").value
    : null;
  if (min) {
    let filters_storage = getFiltersFromLocalStorage();
    if (max) {
      filters_storage["production_year__gte"] = min;
      filters_storage["production_year__lte"] = max;
      loadWithAjax(filters_storage);
      setFilterNewText("year", min + " - " + max);
    } else {
      filters_storage["production_year__gte"] = min;
      loadWithAjax(filters_storage);
      setFilterNewText("year", min + " - ");
    }
  } else if (max) {
    let filters_storage = getFiltersFromLocalStorage();
    filters_storage["production_year__lte"] = max;
    loadWithAjax(filters_storage);
    setFilterNewText("year", " - " + max);
  }
}

function filterCurrency() {
  let currency_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("currency-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      currency_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (currency_filters.length <= 0) {
    delete filters_storage["currency__in"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["currency__in"] = currency_filters;
  loadWithAjax(filters_storage);
}

function filterPrice() {
  min = document.getElementById("min-price").value
    ? document.getElementById("min-price").value
    : null;
  max = document.getElementById("max-price").value
    ? document.getElementById("max-price").value
    : null;
  if (min) {
    let filters_storage = getFiltersFromLocalStorage();
    if (max) {
      filters_storage["price__gte"] = min;
      filters_storage["price__lte"] = max;
      loadWithAjax(filters_storage);
      setFilterNewText("price", min + " - " + max);
    } else {
      filters_storage["price__gte"] = min;
      loadWithAjax(filters_storage);
      setFilterNewText("price", min + " - ");
    }
  } else if (max) {
    let filters_storage = getFiltersFromLocalStorage();
    filters_storage["price__lte"] = max;
    loadWithAjax(filters_storage);
    setFilterNewText("price", " - " + max);
  }
}

function filterBody() {
  let body_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("body-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      body_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (body_filters.length <= 0) {
    delete filters_storage["body_type__in"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["body_type__in"] = body_filters;
  loadWithAjax(filters_storage);
}

// function filterBodyCategory(body) {
//     let elementId = body + "CategoryOption"
//   let category_filter = localStorage.getItem("category_filter")
//     ? JSON.parse(localStorage.getItem("category_filter"))
//     : [];
//   if (category_filter.includes(body)) {
//     const i = category_filter.indexOf(body);
//     category_filter.splice(i, 1);
//     if (category_filter.length < 1) {
//       localStorage.removeItem("category_filter");
//       document
//         .getElementById(elementId)
//         .classList.add("selected-option");
//     } else {
//       localStorage.setItem("category_filter", JSON.stringify(category_filter));
//       document
//         .getElementById(elementId)
//         .classList.add("selected-option");
//     }
//   } else {
//     category_filter.push(body);
//     localStorage.setItem("category_filter", JSON.stringify(category_filter));
//     document
//       .getElementById(elementId)
//       .classList.add("selected-option");
//   }
// }

function filterInColor() {
  let inColor_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("inColor-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      inColor_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (inColor_filters.length <= 0) {
    delete filters_storage["interior_color__in"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["interior_color__in"] = inColor_filters;
  loadWithAjax(filters_storage);
}

function filterExColor() {
  let exColor_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("exColor-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      exColor_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (exColor_filters.length <= 0) {
    delete filters_storage["exterior_color__in"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["exterior_color__in"] = exColor_filters;
  loadWithAjax(filters_storage);
}

//mile -> mileage naming
function filterMileage() {
  min = document.getElementById("min-mile").value
    ? document.getElementById("min-mile").value
    : null;
  max = document.getElementById("max-mile").value
    ? document.getElementById("max-mile").value
    : null;
  if (min) {
    let filters_storage = getFiltersFromLocalStorage();
    if (max) {
      filters_storage["mileage__gte"] = min;
      filters_storage["mileage__lte"] = max;
      loadWithAjax(filters_storage);
      setFilterNewText("mileage", min + " - " + max);
    } else {
      filters_storage["mileage__gte"] = min;
      loadWithAjax(filters_storage);
      setFilterNewText("mileage", min + " - ");
    }
  } else if (max) {
    let filters_storage = getFiltersFromLocalStorage();
    filters_storage["mileage__lte"] = max;
    loadWithAjax(filters_storage);
    setFilterNewText("mileage", " - " + max);
  }
}

function filterDrivetrain() {
  let drivetrain_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("drivetrain-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      drivetrain_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (drivetrain_filters.length <= 0) {
    delete filters_storage["drivetrain_type__in"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["drivetrain_type__in"] = drivetrain_filters;
  loadWithAjax(filters_storage);
}

function filterFuel() {
  let fuel_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("fuel-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      fuel_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (fuel_filters.length <= 0) {
    delete filters_storage["fuel_type__in"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["fuel_type__in"] = fuel_filters;
  loadWithAjax(filters_storage);
}

function filterCylinder() {
  let cylinder_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("cylinder-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      cylinder_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (cylinder_filters.length <= 0) {
    delete filters_storage["cylinders__in"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["cylinders__in"] = cylinder_filters;
  loadWithAjax(filters_storage);
}

function filterTransmission() {
  let transmission_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("transmission-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      transmission_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (transmission_filters.length <= 0) {
    delete filters_storage["transmission_type__in"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["transmission_type__in"] = transmission_filters;
  loadWithAjax(filters_storage);
}

function filterSeatingCap() {
  let seating_cap_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("seating_cap-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      seating_cap_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (seating_cap_filters.length <= 0) {
    delete filters_storage["seating_cap__in"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["seating_cap__in"] = seating_cap_filters;
  loadWithAjax(filters_storage);
}

function filterDoor() {
  let door_filters = [];
  let filters_storage = getFiltersFromLocalStorage();
  const options = document.getElementsByClassName("door-options");
  for (let i = 0; i < options.length; i++) {
    if (options[i].checked) {
      door_filters.push(options[i].id);
    }
  }

  // delete entry in object if list empty
  if (door_filters.length <= 0) {
    delete filters_storage["door_type__in"];
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return;
  }

  filters_storage["door_type__in"] = door_filters;
  loadWithAjax(filters_storage);

  // localStorage.setItem('filters', JSON.stringify(filters_storage))
  // filters_storage = map(filters_storage)
  // $("#filter-result").load("/search", filters_storage);

  // $("#filter-result").load("/search", { "door_type__in": JSON.stringify(door_filters), "order_by": JSON.stringify("price")});
}

function searchByKeywordEnter(e) {
  if (e.keyCode == 13) {
    searchByKeyword()
  }
}

function searchByKeyword() {
  let filters_storage = getFiltersFromLocalStorage();
  const keyword = document.getElementById('keywordFilterOption').value
  if (!keyword) {
    delete filters_storage['description__contains']
    localStorage.setItem("filters", JSON.stringify(filters_storage));
    return
  }
  filters_storage['description__contains'] = keyword
  loadWithAjax(filters_storage)
}

const loadWithAjax = (filters_storage) => {
  localStorage.setItem("filters", JSON.stringify(filters_storage));
  filters_storage = map(filters_storage);
  $("#filter-result").load("/search", filters_storage);
};

const map = (data) => {
  filters = {};
  Object.keys(data).forEach((key) => {
    temp = JSON.stringify(data[key]);
    filters[key] = temp;
  });
  return filters;
};

const getFiltersFromLocalStorage = () => {
  return localStorage.getItem("filters")
    ? JSON.parse(localStorage.getItem("filters"))
    : {};
};

const setFilterNewText = (filter, text) => {
  document.getElementById(filter+'FilterOpener').innerHTML = text;
};

const setFilterDefaultText = filters => {
  filters.map(e => {
    document.getElementById(e).innerHTML = "Zgjidh"
  })
}

const changeBaseSearchHref = () => {
  filters = getFiltersFromLocalStorage();
  type = filters["type__tag"] ? filters["type__tag"] : "empty";
  make = filters["engine_type__model__make__name"]
    ? filters["engine_type__model__make__name"]
    : "empty";
  model = filters["engine_type__model__name"]
    ? filters["engine_type__model__name"]
    : "empty";
  price = filters["price__lte"] ? filters["price__lte"] : "empty";
  condition = filters["condition_type__tag"]
    ? filters["condition_type__tag"]
    : "empty";
  document.getElementById("kerko").href =
    "/search?type__tag=" +
    type +
    "&engine_type__model__make__name=" +
    make +
    "&engine_type__model__name=" +
    model +
    "&price__lte=" +
    price;
  return (
    "/search?type__tag=" +
    type +
    "&engine_type__model__make__name=" +
    make +
    "&engine_type__model__name=" +
    model +
    "&price__lte=" +
    price +
    "&condition_type__tag=" +
    condition
  );
};
