package com.project.bision.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;

import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mashape.unirest.http.exceptions.UnirestException;
import com.project.bision.utilll.APIExplorer;
import com.project.bision.utilll.Sample1;
import com.project.bision.utilll.newAPI;


@Controller
public class MainController {
	
	@RequestMapping(value = "/", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_1() {
		return "index";
	}
	
	@RequestMapping(value = "/index", method = {RequestMethod.GET,RequestMethod.POST})
	public String index() {
		return "redirect:/";
	}
	
	@RequestMapping(value = "/dashboard_2", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_2() {
		return "dashboard_2";
	}
	
	@RequestMapping(value = "/dashboard_3", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_3() {
		return "dashboard_3";
	}
	
	@RequestMapping(value = "/dashboard_4_1", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_4_1() {
		return "dashboard_4_1";
	}
	
	@RequestMapping(value = "/dashboard_4", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_4() {
		return "dashboard_4";
	}
	
	@RequestMapping(value = "/dashboard_5", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_5() {
		return "dashboard_5";
	}
	
	@RequestMapping(value = "/activity_stream", method = {RequestMethod.GET,RequestMethod.POST})
	public String activity_stream() {
		return "activity_stream";
	}
	
	@RequestMapping(value = "/agile_board", method = {RequestMethod.GET,RequestMethod.POST})
	public String agile_board() {
		return "agile_board";
	}
	
	@RequestMapping(value = "/article", method = {RequestMethod.GET,RequestMethod.POST})
	public String article() {
		return "article";
	}
	
	@RequestMapping(value = "/badges_labels", method = {RequestMethod.GET,RequestMethod.POST})
	public String badges_labels() {
		return "badges_labels";
	}
	
	@RequestMapping(value = "/basic_gallery", method = {RequestMethod.GET,RequestMethod.POST})
	public String basic_gallery() {
		return "basic_gallery";
	}
	
	@RequestMapping(value = "/blog", method = {RequestMethod.GET,RequestMethod.POST})
	public String blog() {
		return "blog";
	}
	
	@RequestMapping(value = "/buttons", method = {RequestMethod.GET,RequestMethod.POST})
	public String buttons() {
		return "buttons";
	}
	
	@RequestMapping(value = "/c3", method = {RequestMethod.GET,RequestMethod.POST})
	public String c3() {
		return "c3";
	}
	
	@RequestMapping(value = "/calendar", method = {RequestMethod.GET,RequestMethod.POST})
	public String calendar() {
		return "calendar";
	}
	
	@RequestMapping(value = "/carousel", method = {RequestMethod.GET,RequestMethod.POST})
	public String carousel() {
		return "carousel";
	}
	
	@RequestMapping(value = "/chat_view", method = {RequestMethod.GET,RequestMethod.POST})
	public String chat_view() {
		return "chat_view";
	}
	
	@RequestMapping(value = "/clients", method = {RequestMethod.GET,RequestMethod.POST})
	public String clients() {
		return "clients";
	}
	
	@RequestMapping(value = "/clipboard", method = {RequestMethod.GET,RequestMethod.POST})
	public String clipboard() {
		return "clipboard";
	}
	
	@RequestMapping(value = "/code_editor", method = {RequestMethod.GET,RequestMethod.POST})
	public String code_editor() {
		return "code_editor";
	}
	
	@RequestMapping(value = "/contacts_2", method = {RequestMethod.GET,RequestMethod.POST})
	public String contacts_2() {
		return "contacts_2";
	}
	
	@RequestMapping(value = "/contacts", method = {RequestMethod.GET,RequestMethod.POST})
	public String contacts() {
		return "contacts";
	}
	
	@RequestMapping(value = "/css_animation", method = {RequestMethod.GET,RequestMethod.POST})
	public String css_animation() {
		return "css_animation";
	}
	
	@RequestMapping(value = "/datamaps", method = {RequestMethod.GET,RequestMethod.POST})
	public String datamaps() {
		return "datamaps";
	}
	
	@RequestMapping(value = "/diff", method = {RequestMethod.GET,RequestMethod.POST})
	public String diff() {
		return "diff";
	}
	
	@RequestMapping(value = "/draggable_panels", method = {RequestMethod.GET,RequestMethod.POST})
	public String draggable_panels() {
		return "draggable_panels";
	}
	
	@RequestMapping(value = "/ecommerce_payments", method = {RequestMethod.GET,RequestMethod.POST})
	public String ecommerce_payments() {
		return "ecommerce_payments";
	}
	
	@RequestMapping(value = "/ecommerce_product_detail", method = {RequestMethod.GET,RequestMethod.POST})
	public String ecommerce_product_detail() {
		return "ecommerce_product_detail";
	}
	
	@RequestMapping(value = "/ecommerce_product_list", method = {RequestMethod.GET,RequestMethod.POST})
	public String ecommerce_product_list() {
		return "ecommerce_product_list";
	}
	
	@RequestMapping(value = "/ecommerce_product", method = {RequestMethod.GET,RequestMethod.POST})
	public String ecommerce_product() {
		return "ecommerce_product";
	}
	
	@RequestMapping(value = "/ecommerce_products_grid", method = {RequestMethod.GET,RequestMethod.POST})
	public String ecommerce_products_grid() {
		return "ecommerce_products_grid";
	}
	
	@RequestMapping(value = "/ecommerce_cart", method = {RequestMethod.GET,RequestMethod.POST})
	public String ecommerce_cart() {
		return "ecommerce_cart";
	}
	
	@RequestMapping(value = "/ecommerce_orders", method = {RequestMethod.GET,RequestMethod.POST})
	public String ecommerce_orders() {
		return "ecommerce_orders";
	}
	
	@RequestMapping(value = "/email_template", method = {RequestMethod.GET,RequestMethod.POST})
	public String email_template() {
		return "email_template";
	}
	
	@RequestMapping(value = "/empty_page", method = {RequestMethod.GET,RequestMethod.POST})
	public String empty_page() {
		return "empty_page";
	}
	
	@RequestMapping(value = "/faq", method = {RequestMethod.GET,RequestMethod.POST})
	public String faq() {
		return "faq";
	}
	
	@RequestMapping(value = "/file_manager", method = {RequestMethod.GET,RequestMethod.POST})
	public String file_manager() {
		return "file_manager";
	}
	
	@RequestMapping(value = "/forgot_password", method = {RequestMethod.GET,RequestMethod.POST})
	public String forgot_password() {
		return "forgot_password";
	}
	
	@RequestMapping(value = "/form_advanced", method = {RequestMethod.GET,RequestMethod.POST})
	public String form_advanced() {
		return "form_advanced";
	}
	
	@RequestMapping(value = "/form_autocomplete", method = {RequestMethod.GET,RequestMethod.POST})
	public String form_autocomplete() {
		return "form_autocomplete";
	}
	
	@RequestMapping(value = "/form_basic", method = {RequestMethod.GET,RequestMethod.POST})
	public String form_basic() {
		return "form_basic";
	}
	
	
	@RequestMapping(value = "/form_editors", method = {RequestMethod.GET,RequestMethod.POST})
	public String form_editors() {
		return "form_editors";
	}
	
	
	@RequestMapping(value = "/form_file_upload", method = {RequestMethod.GET,RequestMethod.POST})
	public String form_file_upload() {
		return "form_file_upload";
	}
	
	
	@RequestMapping(value = "/form_markdown", method = {RequestMethod.GET,RequestMethod.POST})
	public String form_markdown() {
		return "form_markdown";
	}
	
	
	@RequestMapping(value = "/form_wizard", method = {RequestMethod.GET,RequestMethod.POST})
	public String form_wizard() {
		return "form_wizard";
	}
	
	
	@RequestMapping(value = "/forum_main", method = {RequestMethod.GET,RequestMethod.POST})
	public String forum_main() {
		return "forum_main";
	}
	
	@RequestMapping(value = "/forum_post", method = {RequestMethod.GET,RequestMethod.POST})
	public String forum_post() {
		return "forum_post";
	}
	
	@RequestMapping(value = "/full_height", method = {RequestMethod.GET,RequestMethod.POST})
	public String full_height() {
		return "full_height";
	}
	
	@RequestMapping(value = "/google_maps", method = {RequestMethod.GET,RequestMethod.POST})
	public String google_maps() {
		return "google_maps";
	}
	
	@RequestMapping(value = "/graph_chartist", method = {RequestMethod.GET,RequestMethod.POST})
	public String graph_chartist() {
		return "graph_chartist";
	}
	
	@RequestMapping(value = "/graph_chartjs", method = {RequestMethod.GET,RequestMethod.POST})
	public String graph_chartjs() {
		return "graph_chartjs";
	}
	
	@RequestMapping(value = "/graph_flot", method = {RequestMethod.GET,RequestMethod.POST})
	public String graph_flot() {
		return "graph_flot";
	}
	
	@RequestMapping(value = "/graph_morris", method = {RequestMethod.GET,RequestMethod.POST})
	public String graph_morris() {
		return "graph_morris";
	}
	
	@RequestMapping(value = "/graph_peity", method = {RequestMethod.GET,RequestMethod.POST})
	public String graph_peity() {
		return "graph_peity";
	}
	
	@RequestMapping(value = "/graph_rickshaw", method = {RequestMethod.GET,RequestMethod.POST})
	public String graph_rickshaw() {
		return "graph_rickshaw";
	}
	
	@RequestMapping(value = "/graph_sparkline", method = {RequestMethod.GET,RequestMethod.POST})
	public String graph_sparkline() {
		return "graph_sparkline";
	}
	@RequestMapping(value = "/grid_options", method = {RequestMethod.GET,RequestMethod.POST})
	public String grid_options() {
		return "grid_options";
	}
	
	@RequestMapping(value = "/helper_classes", method = {RequestMethod.GET,RequestMethod.POST})
	public String helper_classes() {
		return "helper_classes";
	}
	
	@RequestMapping(value = "/i18support", method = {RequestMethod.GET,RequestMethod.POST})
	public String i18support() {
		return "i18support";
	}
	
	@RequestMapping(value = "/ibox_fill_container", method = {RequestMethod.GET,RequestMethod.POST})
	public String ibox_fill_container() {
		return "ibox_fill_container";
	}
	
	@RequestMapping(value = "/icons", method = {RequestMethod.GET,RequestMethod.POST})
	public String icons() {
		return "icons";
	}
	
	@RequestMapping(value = "/idle_timer", method = {RequestMethod.GET,RequestMethod.POST})
	public String idle_timer() {
		return "idle_timer";
	}
	
	@RequestMapping(value = "/invoice_print", method = {RequestMethod.GET,RequestMethod.POST})
	public String invoice_print() {
		return "invoice_print";
	}
	
	@RequestMapping(value = "/invoice", method = {RequestMethod.GET,RequestMethod.POST})
	public String invoice() {
		return "invoice";
	}
	
	@RequestMapping(value = "/issue_tracker", method = {RequestMethod.GET,RequestMethod.POST})
	public String issue_tracker() {
		return "issue_tracker";
	}
	
	@RequestMapping(value = "/jq_grid", method = {RequestMethod.GET,RequestMethod.POST})
	public String jq_grid() {
		return "jq_grid";
	}
	
	@RequestMapping(value = "/landing", method = {RequestMethod.GET,RequestMethod.POST})
	public String landing() {
		return "landing";
	}
	
	@RequestMapping(value = "/layouts", method = {RequestMethod.GET,RequestMethod.POST})
	public String layouts() {
		return "layouts";
	}
	
	@RequestMapping(value = "/loading_buttons", method = {RequestMethod.GET,RequestMethod.POST})
	public String loading_buttons() {
		return "loading_buttons";
	}
	
	@RequestMapping(value = "/lockscreen", method = {RequestMethod.GET,RequestMethod.POST})
	public String lockscreen() {
		return "lockscreen";
	}
	
	@RequestMapping(value = "/login_two_columns", method = {RequestMethod.GET,RequestMethod.POST})
	public String login_two_columns() {
		return "login_two_columns";
	}
	
	@RequestMapping(value = "/login", method = {RequestMethod.GET,RequestMethod.POST})
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/mail_compose", method = {RequestMethod.GET,RequestMethod.POST})
	public String mail_compose() {
		return "mail_compose";
	}
	
	@RequestMapping(value = "/mail_detail", method = {RequestMethod.GET,RequestMethod.POST})
	public String mail_detail() {
		return "mail_detail";
	}
	
	@RequestMapping(value = "/mailbox", method = {RequestMethod.GET,RequestMethod.POST})
	public String mailbox() {
		return "mailbox";
	}
	
	@RequestMapping(value = "/masonry", method = {RequestMethod.GET,RequestMethod.POST})
	public String masonry() {
		return "masonry";
	}
	
	@RequestMapping(value = "/md_skin", method = {RequestMethod.GET,RequestMethod.POST})
	public String md_skin() {
		return "md_skin";
	}
	
	@RequestMapping(value = "/metrics", method = {RequestMethod.GET,RequestMethod.POST})
	public String metrics() {
		return "metrics";
	}
	
	@RequestMapping(value = "/modal_window", method = {RequestMethod.GET,RequestMethod.POST})
	public String modal_window() {
		return "modal_window";
	}
	
	@RequestMapping(value = "/nestable_list", method = {RequestMethod.GET,RequestMethod.POST})
	public String nestable_list() {
		return "nestable_list";
	}
	
	@RequestMapping(value = "/notifications", method = {RequestMethod.GET,RequestMethod.POST})
	public String notifications() {
		return "notifications";
	}
	
	@RequestMapping(value = "/off_canvas_menu", method = {RequestMethod.GET,RequestMethod.POST})
	public String off_canvas_menu() {
		return "off_canvas_menu";
	}
	
	@RequestMapping(value = "/package", method = {RequestMethod.GET,RequestMethod.POST})
	public String packagePage() {
		return "package";
	}
	
	@RequestMapping(value = "/password_meter", method = {RequestMethod.GET,RequestMethod.POST})
	public String password_meter() {
		return "password_meter";
	}
	
	@RequestMapping(value = "/pdf_viewer", method = {RequestMethod.GET,RequestMethod.POST})
	public String pdf_viewer() {
		return "pdf_viewer";
	}
	
	@RequestMapping(value = "/pin_board", method = {RequestMethod.GET,RequestMethod.POST})
	public String pin_board() {
		return "pin_board";
	}
	
	@RequestMapping(value = "/profile_2", method = {RequestMethod.GET,RequestMethod.POST})
	public String profile_2() {
		return "profile_2";
	}
	
	@RequestMapping(value = "/profile", method = {RequestMethod.GET,RequestMethod.POST})
	public String profile() {
		return "profile";
	}
	
	@RequestMapping(value = "/project_detail", method = {RequestMethod.GET,RequestMethod.POST})
	public String project_detail() {
		return "project_detail";
	}
	
	@RequestMapping(value = "/projects", method = {RequestMethod.GET,RequestMethod.POST})
	public String projects() {
		return "projects";
	}
	
	@RequestMapping(value = "/register", method = {RequestMethod.GET,RequestMethod.POST})
	public String register() {
		return "register";
	}
	
	@RequestMapping(value = "/resizeable_panels", method = {RequestMethod.GET,RequestMethod.POST})
	public String resizeable_panels() {
		return "resizeable_panels";
	}
	
	@RequestMapping(value = "/search_results", method = {RequestMethod.GET,RequestMethod.POST})
	public String search_results() {
		return "search_results";
	}
	
	@RequestMapping(value = "/skin_config", method = {RequestMethod.GET,RequestMethod.POST})
	public String skin_config() {
		return "skin_config";
	}
	
	@RequestMapping(value = "/slick_carousel", method = {RequestMethod.GET,RequestMethod.POST})
	public String slick_carousel() {
		return "slick_carousel";
	}
	
	@RequestMapping(value = "/social_buttons", method = {RequestMethod.GET,RequestMethod.POST})
	public String social_buttons() {
		return "social_buttons";
	}
	
	@RequestMapping(value = "/social_feed", method = {RequestMethod.GET,RequestMethod.POST})
	public String social_feed() {
		return "social_feed";
	}
	
	@RequestMapping(value = "/spinners_usage", method = {RequestMethod.GET,RequestMethod.POST})
	public String spinners_usage() {
		return "spinners_usage";
	}
	
	@RequestMapping(value = "/spinners", method = {RequestMethod.GET,RequestMethod.POST})
	public String spinners() {
		return "spinners";
	}
	
	@RequestMapping(value = "/sweetalert", method = {RequestMethod.GET,RequestMethod.POST})
	public String sweetalert() {
		return "sweetalert";
	}
	
	@RequestMapping(value = "/table_basic", method = {RequestMethod.GET,RequestMethod.POST})
	public String table_basic() {
		return "table_basic";
	}
	
	@RequestMapping(value = "/table_data_tables", method = {RequestMethod.GET,RequestMethod.POST})
	public String table_data_tables() {
		return "table_data_tables";
	}
	
	@RequestMapping(value = "/table_foo_table", method = {RequestMethod.GET,RequestMethod.POST})
	public String table_foo_table() {
		return "table_foo_table";
	}
	
	@RequestMapping(value = "/tabs_panels", method = {RequestMethod.GET,RequestMethod.POST})
	public String tabs_panels() {
		return "tabs_panels";
	}
	
	@RequestMapping(value = "/tabs", method = {RequestMethod.GET,RequestMethod.POST})
	public String tabs() {
		return "tabs";
	}
	
	@RequestMapping(value = "/teams_board", method = {RequestMethod.GET,RequestMethod.POST})
	public String teams_board() {
		return "teams_board";
	}
	
	@RequestMapping(value = "/text_spinners", method = {RequestMethod.GET,RequestMethod.POST})
	public String text_spinners() {
		return "text_spinners";
	}
	
	@RequestMapping(value = "/timeline_2", method = {RequestMethod.GET,RequestMethod.POST})
	public String timeline_2() {
		return "timeline_2";
	}
	
	@RequestMapping(value = "/timeline", method = {RequestMethod.GET,RequestMethod.POST})
	public String timeline() {
		return "timeline";
	}
	
	@RequestMapping(value = "/toastr_notifications", method = {RequestMethod.GET,RequestMethod.POST})
	public String toastr_notifications() {
		return "toastr_notifications";
	}
	
	@RequestMapping(value = "/tour", method = {RequestMethod.GET,RequestMethod.POST})
	public String tour() {
		return "tour";
	}
	
	@RequestMapping(value = "/tree_view", method = {RequestMethod.GET,RequestMethod.POST})
	public String tree_view() {
		return "tree_view";
	}
	
	@RequestMapping(value = "/truncate", method = {RequestMethod.GET,RequestMethod.POST})
	public String truncate() {
		return "truncate";
	}
	
	@RequestMapping(value = "/typography", method = {RequestMethod.GET,RequestMethod.POST})
	public String typography() {
		return "typography";
	}
	
	@RequestMapping(value = "/validation", method = {RequestMethod.GET,RequestMethod.POST})
	public String validation() {
		return "validation";
	}
	
	@RequestMapping(value = "/video", method = {RequestMethod.GET,RequestMethod.POST})
	public String video() {
		return "video";
	}
	
	@RequestMapping(value = "/vote_list", method = {RequestMethod.GET,RequestMethod.POST})
	public String vote_list() {
		return "vote_list";
	}
	
	@RequestMapping(value = "/widgets", method = {RequestMethod.GET,RequestMethod.POST})
	public String widgets() {
		return "widgets";
	}
	@RequestMapping(value = "/testSearch", method = {RequestMethod.GET,RequestMethod.POST})
	public String testSearch() {
		return "testSearch";
	}
	@RequestMapping(value = "keywordSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public String replyDelete(String searchNaver) throws UnirestException, IOException, GeneralSecurityException, ParseException {
		APIExplorer searchAPI = new APIExplorer();		
		searchAPI.searchKey(searchNaver); //�굹�씠��蹂� �긽���쟻�씤鍮꾩쑉(媛��옣�넂�� �굹�씠��媛� 100�씠�씪怨� 媛��젙) , �궓��鍮꾩쑉
		newAPI newsSearchAPI = new newAPI();
		newsSearchAPI.SearchKeyword(searchNaver);
		Sample1 searchKeyword = new Sample1(); //pc,mobile�겢由� �넻怨�
		searchKeyword.searchKeyword(searchNaver);
		return "testSearch";
	}
}