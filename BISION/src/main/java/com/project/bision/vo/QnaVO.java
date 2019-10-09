package com.project.bision.vo;


public class QnaVO {

	
		private int qnaseq;
		private String qnatype;
		private String qnatitle;
		private String qnacontent;
		private String qnaid;
		private String qnadate;
		public int getQnaseq() {
			return qnaseq;
		}
		public void setQnaseq(int qnaseq) {
			this.qnaseq = qnaseq;
		}
		public String getQnatype() {
			return qnatype;
		}
		public void setQnatype(String qnatype) {
			this.qnatype = qnatype;
		}
		public String getQnatitle() {
			return qnatitle;
		}
		public void setQnatitle(String qnatitle) {
			this.qnatitle = qnatitle;
		}
		public String getQnacontent() {
			return qnacontent;
		}
		public void setQnacontent(String qnacontent) {
			this.qnacontent = qnacontent;
		}
		public String getQnaid() {
			return qnaid;
		}
		public void setQnaid(String qnaid) {
			this.qnaid = qnaid;
		}
		public String getQnadate() {
			return qnadate;
		}
		public void setQnadate(String qnadate) {
			this.qnadate = qnadate;
		}
		@Override
		public String toString() {
			return "QnaVO [qnaseq=" + qnaseq + ", qnatype=" + qnatype + ", qnatitle=" + qnatitle + ", qnacontent="
					+ qnacontent + ", qnaid=" + qnaid + ", qnadate=" + qnadate + "]";
		}
		
		
		
}
