package Servidores;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import Clases.*;
import java.io.File;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Business Coffee
 */
@MultipartConfig

public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }
    private boolean valExtens(String fileName, String[] extensions){
        for(String et: extensions){
            if(fileName.toLowerCase().endsWith(et)){
                return true;
            }
        }
        return false;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pagina = request.getParameter("pagina");
        if (pagina.equals("ListarProducto")) {
            ImgProductoDao daoImg= new ImgProductoDao();
            MostrarProductos p= new MostrarProductos();
            List<MostrarProductos>lista= daoImg.listarProducto();
            request.setAttribute("lista", lista);
            RequestDispatcher despachador = request.getRequestDispatcher("Productos.jsp");
            despachador.forward(request, response);
        }
        
        else if (pagina.equals("ListarProductoA")) {
            ImgProductoDao daoImg= new ImgProductoDao();
            MostrarProductos p= new MostrarProductos();
            List<MostrarProductos>lista= daoImg.listarProducto();
            request.setAttribute("lista", lista);
            RequestDispatcher despachador = request.getRequestDispatcher("ProductosAdmin.jsp");
            despachador.forward(request, response);
        }
        
        else if (pagina.equals("ListarProductoC")) {
            ImgProductoDao daoImg= new ImgProductoDao();
            MostrarProductos p= new MostrarProductos();
            List<MostrarProductos>lista= daoImg.listarProducto();
            request.setAttribute("lista", lista);
            RequestDispatcher despachador = request.getRequestDispatcher("ProductosCliente.jsp");
            despachador.forward(request, response);
        }
        
        else if (pagina.equals("MostrP")) {
            String codigoP = request.getParameter("codigoP");
            Integer codigo= Integer.parseInt(codigoP);
            ImgProductoDao daoImg= new ImgProductoDao();
            MostrarProductos p= new MostrarProductos();
            OperacionesComent opCom= new OperacionesComent();
            List<MostrarProductos>lista= daoImg.listarProductoEspec(codigo);
            List<MostrarProductos>listaIngre= daoImg.listarIngredientes(codigo);
            List<OperacionesComent>listaComentCl= opCom.listarComentariosCliente(codigo);
            List<OperacionesComent>listaComentAd= opCom.listarComentariosAdmin(codigo);
            request.setAttribute("listaProductoE", lista);
            request.setAttribute("listaIngredientes", listaIngre);
            request.setAttribute("listaComentCl", listaComentCl);
            request.setAttribute("listaComentAd", listaComentAd);
            RequestDispatcher despachador = request.getRequestDispatcher("InformacionProducto.jsp");
            despachador.forward(request, response);
        }
        
        else if (pagina.equals("MostrPAdmin")) {
            String codigoP = request.getParameter("codigoP");
            Integer codigo= Integer.parseInt(codigoP);
            ImgProductoDao daoImg= new ImgProductoDao();
            MostrarProductos p= new MostrarProductos();
            OperacionesComent opCom= new OperacionesComent();
            List<MostrarProductos>lista= daoImg.listarProductoEspec(codigo);
            List<MostrarProductos>listaIngre= daoImg.listarIngredientes(codigo);
            List<OperacionesComent>listaComentCl= opCom.listarComentariosCliente(codigo);
            List<OperacionesComent>listaComentAd= opCom.listarComentariosAdmin(codigo);
            request.setAttribute("listaProductoE", lista);
            request.setAttribute("listaIngredientes", listaIngre);
            request.setAttribute("listaComentCl", listaComentCl);
            request.setAttribute("listaComentAd", listaComentAd);
            RequestDispatcher despachador = request.getRequestDispatcher("InformacionProductoAdmin.jsp");
            despachador.forward(request, response);
        }
        
        else if (pagina.equals("MostrPCliente")) {
            String codigoP = request.getParameter("codigoP");
            Integer codigo= Integer.parseInt(codigoP);
            ImgProductoDao daoImg= new ImgProductoDao();
            MostrarProductos p= new MostrarProductos();
            OperacionesComent opCom= new OperacionesComent();
            List<MostrarProductos>lista= daoImg.listarProductoEspec(codigo);
            List<MostrarProductos>listaIngre= daoImg.listarIngredientes(codigo);
            List<OperacionesComent>listaComentCl= opCom.listarComentariosCliente(codigo);
            List<OperacionesComent>listaComentAd= opCom.listarComentariosAdmin(codigo);
            request.setAttribute("listaProductoE", lista);
            request.setAttribute("listaIngredientes", listaIngre);
            request.setAttribute("listaComentCl", listaComentCl);
            request.setAttribute("listaComentAd", listaComentAd);
            RequestDispatcher despachador = request.getRequestDispatcher("InformacionProductoCliente.jsp");
            despachador.forward(request, response);
        }
        
        else if (pagina.equals("eliminarProducto")) {
            String codigoP = request.getParameter("codigoP");
            Integer codigo= Integer.parseInt(codigoP);
            String imgPat= request.getParameter("nombreImg");
            OperacionesProducto operPro= new OperacionesProducto();
            operPro.eliminarProducto(codigo, imgPat);
            ImgProductoDao daoImg= new ImgProductoDao();
            MostrarProductos p= new MostrarProductos();
            List<MostrarProductos>lista= daoImg.listarProducto();
            request.setAttribute("lista", lista);
            RequestDispatcher despachador = request.getRequestDispatcher("PerfilAdmin.jsp");
            despachador.forward(request, response);
        }
        
        else if (pagina.equals("AgregarFavorito")) {
            String codigoP = request.getParameter("prod");
            Integer codigoProducto= Integer.parseInt(codigoP);
            String codigoCl = request.getParameter("clien");
            Integer codigoClinte= Integer.parseInt(codigoCl);
            OperacionesFav opFav= new OperacionesFav(codigoClinte,codigoProducto);
            opFav.insertFavorito();
            System.out.println("Agregar fav "+codigoProducto+" "+codigoClinte);
            response.sendRedirect("/BusinessCoffee/Login?pagina=ListarProductoC");
        }
        
        else if (pagina.equals("EliminarFavorito")) {
            String codigoP = request.getParameter("prod");
            Integer codigoProducto= Integer.parseInt(codigoP);
            String codigoCl = request.getParameter("clien");
            Integer codigoClinte= Integer.parseInt(codigoCl);
            OperacionesFav opFav= new OperacionesFav(codigoClinte,codigoProducto);
            opFav.eliminarFav();
            response.sendRedirect("/BusinessCoffee/Login?pagina=ListarProductoC");
        }
        
        else if (pagina.equals("EliminarFavorito2")) {
            String codigoP = request.getParameter("prod");
            Integer codigoProducto= Integer.parseInt(codigoP);
            String codigoCl = request.getParameter("clien");
            Integer codigoClinte= Integer.parseInt(codigoCl);
            OperacionesFav opFav= new OperacionesFav(codigoClinte,codigoProducto);
            opFav.eliminarFav();
            RequestDispatcher despachador = request.getRequestDispatcher("PerfilCliente.jsp");
            despachador.forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pagina = request.getParameter("pagina");
        
        if (pagina.equals("RegistroAdmin")) {
            String CedulaAdmin = new String(request.getParameter("Cedula").getBytes("ISO-8859-1"),"UTF-8");
            String nombreAdmin = new String(request.getParameter("Nombre").getBytes("ISO-8859-1"),"UTF-8");
            String apellidoAdmin = new String(request.getParameter("Apellido").getBytes("ISO-8859-1"),"UTF-8");
            String generoAdmin = new String(request.getParameter("Genero").getBytes("ISO-8859-1"),"UTF-8");
            String fechaNacAdmin = new String(request.getParameter("FechaNac").getBytes("ISO-8859-1"),"UTF-8");
            String celularAdmin = new String(request.getParameter("Celular").getBytes("ISO-8859-1"),"UTF-8");
            String emailAdmin = new String(request.getParameter("Correo").getBytes("ISO-8859-1"),"UTF-8");
            String contrasenaAdmin = new String(request.getParameter("Contra").getBytes("ISO-8859-1"),"UTF-8");
            OperacionesAdminBD conexion = new OperacionesAdminBD(CedulaAdmin, nombreAdmin, apellidoAdmin, generoAdmin, fechaNacAdmin, celularAdmin, emailAdmin, contrasenaAdmin);
            int val = conexion.getVal(emailAdmin);
            int cont=1;
            System.out.println("Login " + val);
            if (val > 0) {
                System.out.println("En usoooo");
                System.out.println("En usoooo");
                request.setAttribute("correoValido", val);
                RequestDispatcher despachador = request.getRequestDispatcher("RegistroAdmin.jsp");
                despachador.forward(request, response);
            } else {
                conexion.Resgistro();
                RequestDispatcher despachador = request.getRequestDispatcher("IniSesion.jsp");
                despachador.forward(request, response);
            }

        } 
        
        else if (pagina.equals("RegistroCliente")) {
            String CedulaClient = new String(request.getParameter("Cedula").getBytes("ISO-8859-1"),"UTF-8");
            String nombreClient = new String(request.getParameter("Nombre").getBytes("ISO-8859-1"),"UTF-8");
            String apellidoClient = new String(request.getParameter("Apellido").getBytes("ISO-8859-1"),"UTF-8");
            String emailClient = new String(request.getParameter("Correo").getBytes("ISO-8859-1"),"UTF-8");
            String contrasenaClient = new String(request.getParameter("Contra").getBytes("ISO-8859-1"),"UTF-8");
            OperacionesClienteBD conexion = new OperacionesClienteBD(CedulaClient, nombreClient, apellidoClient, emailClient, contrasenaClient);
            int val = conexion.getVal(emailClient);
            System.out.println("Login " + val);
            if (val > 0) {
                System.out.println("En usoooo");
                request.setAttribute("correoValido", val);
                RequestDispatcher despachador = request.getRequestDispatcher("RegistroCliente.jsp");
                despachador.forward(request, response);
            } else {
                conexion.Resgistro();
                RequestDispatcher despachador = request.getRequestDispatcher("IniSesion.jsp");
                despachador.forward(request, response);
            }
        } 
        
        else if (pagina.equals("InsertProducto")) {
            HttpSession sesion = request.getSession(false);
            MostrarProductos p= new MostrarProductos();
            OperacionesProducto pDao= new OperacionesProducto();
            int admin = Clases.IniciarSesion.codigo;
            p.setAdmin(admin);
            p.setNombreProducto(new String(request.getParameter("nombreProducto").getBytes("ISO-8859-1"),"UTF-8"));
            p.setDescProducto(new String(request.getParameter("Descripcion").getBytes("ISO-8859-1"),"UTF-8"));
            p.setProcedimiento(new String(request.getParameter("Proceso").getBytes("ISO-8859-1"),"UTF-8"));
            p.setObservaciones(new String(request.getParameter("Observaciones").getBytes("ISO-8859-1"),"UTF-8"));
            p.setUrlProducto(new String(request.getParameter("urlProducto").getBytes("ISO-8859-1"),"UTF-8"));
            Part partImg = request.getPart("imgproducto");
            String pathFiles= "M:\\Business Coffee\\BusinessCoffee\\web\\imgProductos\\";
            File uploads= new File(pathFiles);
            String[] extens= {".ico",".png",".jpg",".jpeg",".jfif"};
            if(valExtens(partImg.getSubmittedFileName(),extens)){
                String img= pDao.saveFile(partImg,uploads);
                p.setImg(pDao.getFileName2());
                pDao.insertProducto(p);
            }
            String ingredientes[] = new String[15];
            String cantidades[] = new String[15];
            for (int i=0;i<15;i++){
                ingredientes[i]=new String(request.getParameter("Ingrediente"+i+"").getBytes("ISO-8859-1"),"UTF-8");
                cantidades[i]=new String(request.getParameter("Cantidad"+i+"").getBytes("ISO-8859-1"),"UTF-8");
            }
            int codProducto= pDao.codprod(admin);
            System.out.println("Codigo prod "+codProducto);
            for (int i=0;i<15;i++){
                pDao.insertIngredientes(ingredientes[i], cantidades[i],codProducto);
            }
            RequestDispatcher despachador = request.getRequestDispatcher("PerfilAdmin.jsp");
            despachador.forward(request, response);
        } 
        
        else if (pagina.equals("ComentProductoCl")) {
            OperacionesComent opC= new OperacionesComent();
            String coment = new String(request.getParameter("comentario").getBytes("ISO-8859-1"),"UTF-8");
            int codPro = new Integer(request.getParameter("codigoPro"));
            int codCl = new Integer(request.getParameter("codigoCl"));
            if(coment!=null || !"Deja tu comentario".equals(coment) || coment!=" " || coment!=""){
                opC.insertComentCl(codPro, codCl, coment);
            }
            response.sendRedirect("/BusinessCoffee/Login?pagina=MostrPCliente&codigoP="+codPro);
        }
        
        else if (pagina.equals("ComentProductoAd")) {
            OperacionesComent opC= new OperacionesComent();
            String coment = new String(request.getParameter("comentario").getBytes("ISO-8859-1"),"UTF-8");
            int codPro = new Integer(request.getParameter("codigoPro"));
            int codAd = new Integer(request.getParameter("codigoAd"));
            if(coment!=null || !"Deja tu comentario".equals(coment) || coment!=" " || coment!=""){
                opC.insertComentAd(codPro, codAd, coment);
            }
            response.sendRedirect("/BusinessCoffee/Login?pagina=MostrPAdmin&codigoP="+codPro);
        }
        
        else if (pagina.equals("IniciarSesion")) {
            HttpSession sesion = request.getSession();
            int val=0,validacion=0;
            String email = new String(request.getParameter("Correo").getBytes("ISO-8859-1"),"UTF-8");
            String contra = new String(request.getParameter("Contra").getBytes("ISO-8859-1"),"UTF-8");
            String perfil = new String(request.getParameter("Perfil").getBytes("ISO-8859-1"),"UTF-8");
            IniciarSesion conexion = new IniciarSesion(email, contra, perfil);
            OperacionesClienteBD cliente= new OperacionesClienteBD();
            OperacionesAdminBD admin= new OperacionesAdminBD();
            val = conexion.ValidarInicio();
            validacion = conexion.ValidarInicio();
            System.out.println(validacion);
            switch (validacion) {
                case 1: {
                    sesion.setAttribute("codigo", conexion.getCodigo());
                    sesion.setAttribute("nombre", conexion.getNombre());
                    OperacionesClienteBD infoCliente= cliente.mostrarInfoCliente(conexion.getCodigo());
                    sesion.setAttribute("infoCliente", infoCliente);
                    RequestDispatcher despachador = request.getRequestDispatcher("InicioCliente.jsp");
                    despachador.forward(request, response);
                    break;
                }
                case 2: {
                    sesion.setAttribute("codigo", conexion.getCodigo());
                    sesion.setAttribute("nombre", conexion.getNombre());
                    OperacionesAdminBD infoAdmin= admin.mostrarInfoAdmin(conexion.getCodigo());
                    sesion.setAttribute("infoAdmin", infoAdmin);
                    RequestDispatcher despachador = request.getRequestDispatcher("InicioAdmin.jsp");
                    despachador.forward(request, response);
                    break;
                }
                default: {
                    request.setAttribute("valido", validacion);
                    RequestDispatcher despachador = request.getRequestDispatcher("IniSesion.jsp");
                    despachador.forward(request, response);
                }
            }
        } else if (pagina.equals("EditarAdmin")) {
            RequestDispatcher despachador = request.getRequestDispatcher("PerfilAdmin.jsp");
            despachador.forward(request, response);
        } else if (pagina.equals("Inicializar")) {
            int val=0,validacion=0;
            request.setAttribute("correoValido", val);
            request.setAttribute("valido", validacion);
            System.out.println("Inicializarr   "+val+" o   "+validacion);
        } else {
            processRequest(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
