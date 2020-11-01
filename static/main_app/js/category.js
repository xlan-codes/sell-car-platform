function bodyFilterCategory(body) {
    let categoryId = body + "CategoryOption"
    let category_filter = localStorage.getItem("category_filter")
      ? JSON.parse(localStorage.getItem("category_filter"))
      : [];
    if (category_filter.includes(body)) {
      const i = category_filter.indexOf(body);
      category_filter.splice(i, 1);
      if (category_filter.length < 1) {
        localStorage.removeItem("category_filter");
        filer(category_filter)
        document
          .getElementById(categoryId)
          .classList.remove("selected-option");
      } else {
        localStorage.setItem("category_filter", JSON.stringify(category_filter));
        filer(category_filter)
        document
          .getElementById(categoryId)
          .classList.remove("selected-option");
      }
    } else {
      category_filter.push(body);
      localStorage.setItem("category_filter", JSON.stringify(category_filter));
      filer(category_filter)
      document
        .getElementById(categoryId)
        .classList.add("selected-option");
    }
  }
  
  const filer = bodies => {
      $("#filterdCategoryVehicle").load("/category", {"bodies": JSON.stringify(bodies)});
  }