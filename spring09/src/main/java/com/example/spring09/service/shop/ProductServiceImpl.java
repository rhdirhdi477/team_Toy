package com.example.spring09.service.shop;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.spring09.model.shop.dao.ProductDAO;
import com.example.spring09.model.shop.dto.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Inject
	ProductDAO productDao;

	@Override
	public List<ProductDTO> listProduct() {
		return productDao.listProduct();
	}
	public List<ProductDTO> listProduct2() {
		return productDao.listProduct2();
	}
	public List<ProductDTO> listProduct3() {
		return productDao.listProduct3();
	}
	public List<ProductDTO> listProduct4() {
		return productDao.listProduct4();
	}
	public List<ProductDTO> listProduct5() {
		return productDao.listProduct5();
	}

	@Override
	public ProductDTO detailProduct(int product_id) {
		return productDao.detailProduct(product_id);
	}

	@Override
	public void updateProduct(ProductDTO dto) {
		productDao.updateProduct(dto);
	}

	@Override
	public void deleteProduct(int product_id) {
		productDao.deleteProduct(product_id);
	}

	@Override
	public void insertProduct(ProductDTO dto) {
		productDao.insertProduct(dto);
	}

	@Override
	public String fileInfo(int product_id) {
		return productDao.fileInfo(product_id);
	}

}
