package com.example.spring09.model.shop.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring09.model.shop.dto.ProductDTO;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Inject //의존관계 주입
	SqlSession sqlSession;

	@Override
	public List<ProductDTO> listProduct() {
		return sqlSession.selectList("product.product_list");
	}
	public List<ProductDTO> listProduct2() {
		return sqlSession.selectList("product.product_list2");
	}
	public List<ProductDTO> listProduct3() {
		return sqlSession.selectList("product.product_list3");
	}
	public List<ProductDTO> listProduct4() {
		return sqlSession.selectList("product.product_list4");
	}
	public List<ProductDTO> listProduct5() {
		return sqlSession.selectList("product.product_list5");
	}

	@Override
	public ProductDTO detailProduct(int product_id) {
		return sqlSession.selectOne(
				"product.detail_product", product_id);
	}

	@Override
	public void updateProduct(ProductDTO dto) {
		sqlSession.update("product.update_product", dto);
	}

	@Override
	public void deleteProduct(int product_id) {
		sqlSession.delete("product.product_delete", product_id);
	}

	@Override
	public void insertProduct(ProductDTO dto) {
		sqlSession.insert("product.insert", dto);
	}

	@Override
	public String fileInfo(int product_id) {
		return sqlSession.selectOne("product.fileInfo", product_id);
	}

}
