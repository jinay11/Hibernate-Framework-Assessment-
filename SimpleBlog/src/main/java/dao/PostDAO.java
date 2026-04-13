package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Post;
import util.DBConnection;

public class PostDAO {

	public boolean create(Post p) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con
					.prepareStatement("INSERT INTO posts(title,content,tags,user_id) VALUES(?,?,?,?)");
			ps.setString(1, p.getTitle());
			ps.setString(2, p.getContent());
			ps.setString(3, p.getTags());
			ps.setInt(4, p.getUserId());
			return ps.executeUpdate() > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<Post> getAll() {
		List<Post> list = new ArrayList<>();
		try {
			Connection con = DBConnection.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM posts");

			while (rs.next()) {
				Post p = new Post();
				p.setId(rs.getInt("id"));
				p.setTitle(rs.getString("title"));
				p.setContent(rs.getString("content"));
				p.setTags(rs.getString("tags"));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Post> search(String keyword) {
		List<Post> list = new ArrayList<>();
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM posts WHERE title LIKE ? OR tags LIKE ?");
			ps.setString(1, "%" + keyword + "%");
			ps.setString(2, "%" + keyword + "%");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Post p = new Post();
				p.setId(rs.getInt("id"));
				p.setTitle(rs.getString("title"));
				p.setContent(rs.getString("content"));
				p.setTags(rs.getString("tags"));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Post getById(int id) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM posts WHERE id=?");
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				Post p = new Post();
				p.setId(rs.getInt("id"));
				p.setTitle(rs.getString("title"));
				p.setContent(rs.getString("content"));
				p.setTags(rs.getString("tags"));
				return p;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean update(Post p) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("UPDATE posts SET title=?, content=?, tags=? WHERE id=?");

			ps.setString(1, p.getTitle());
			ps.setString(2, p.getContent());
			ps.setString(3, p.getTags());
			ps.setInt(4, p.getId());

			return ps.executeUpdate() > 0;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete(int id) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM posts WHERE id=?");
			ps.setInt(1, id);

			return ps.executeUpdate() > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
