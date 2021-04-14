package web.commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * CREATED BY Janus @ 2021-04-14 - 10:23
 **/
public class ShowBmiPageCommand extends CommandProtectedPage{

    public ShowBmiPageCommand(String pageToShow, String role) {
        super(pageToShow, role);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        return pageToShow;
    }

}
