package pkrent4u.schema;

public class Car {
    private String carID;
    private String brand;
    private String model;
    private String image;
    private int year;
    private int rentalRatePerDay;
    private int available;

    public String getCarID() {
        return carID;
    }

    public void setCarID(String carID) {
        this.carID = carID;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getRentalRatePerDay() {
        return rentalRatePerDay;
    }

    public void setRentalRatePerDay(int rentalRatePerDay) {
        this.rentalRatePerDay = rentalRatePerDay;
    }

    public int isAvailable() {
        return available;
    }

    public void setAvailable(int available) {
        this.available = available;
    }
}