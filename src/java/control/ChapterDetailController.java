
package control;

import bean.ChapterBean;
import entity.Chapter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.IDaoService;
import service.impl.DaoService;

/**
 *
 * @author hailo
 */
@WebServlet(name = "ChapterDetailController", urlPatterns = {"/chapter-detail"})
public class ChapterDetailController extends HttpServlet {

    public IDaoService daoService = DaoService.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        Chapter c = daoService.getSingleChapter(id);
        ChapterBean chapbean = daoService.getSingleChapterBean(c);
        request.setAttribute("chapter", chapbean);
        request.getRequestDispatcher("/view/ChapterDetail.jsp").forward(request, response);
    }

 
}
