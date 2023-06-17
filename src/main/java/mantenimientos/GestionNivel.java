package mantenimientos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Nivel;
import model.Subject;
import utils.MySQLConexion;
import interfaces.NivelInterface;

public class GestionNivel implements NivelInterface{

	@Override
	public List<Nivel> listado() {
		List<Nivel> lista = new ArrayList<Nivel>();
		// Plantilla de BD
		Connection cn = null;
		PreparedStatement psm = null;
		ResultSet rs = null;
		try {
			cn = MySQLConexion.getConexion();
			String sql = "select * from tb_level";
			psm = cn.prepareStatement(sql);

			rs = psm.executeQuery();

			while (rs.next()) {
				Nivel n = new Nivel();
				n.setLevel(rs.getString("level"));
				n.setDes_level(rs.getString("des_level"));
				lista.add(n);
			}
		} catch (Exception e) {
			System.out.println("Error en LISTADO : " + e.getMessage());
		} finally {
			// cerrar la conexión
			MySQLConexion.closeConexion(cn);
		}
		return lista;
	}

}
