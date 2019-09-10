package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "iphone7", 10000000, "iphone.jpg", "apple"));
        products.put(2, new Product(2, "nokia", 2000000, "phone", "nokia"));
        products.put(3, new Product(3, "samsung", 1400000, "a.jpg", "samsung"));
        products.put(4, new Product(4, "sony", 1600000, "phone", "sony"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public Product findByName(String name) {
        List<Product> findAll1 = findAll();
        String searchName = name.toLowerCase().trim();
        for (Product product : findAll1 ){
            String productName = product.getName().toLowerCase().trim();
            if (productName.equals(searchName)) {
                return product;
            }
        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
