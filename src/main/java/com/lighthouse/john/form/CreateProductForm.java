package com.lighthouse.john.form;
import javax.validation.constraints.NotEmpty;

public class CreateProductForm {

    @NotEmpty(message = "Field cannot be empty")
    private String productName;

    @NotEmpty(message = "Field cannot be empty")
    private String quantity;

    @NotEmpty(message = "Field cannot be empty")
    private String price;

    @NotEmpty(message = "Field cannot be empty")
    private String category;

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
