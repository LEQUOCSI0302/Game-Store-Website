package model.beans;


public class Discounts {
	private long id;
	private String title;
	private String dealType;
	private String offerEnd;
	private String percentOff;
	private String price;
	private String imgUrl;
	//Phần dưới thuộc về tool
	private String videoUrl;
	private String releaseDate;
	private String reviewStatus;
	private int reviewCount;
	private String[] userTag;
	public Discounts(long id,String title, String dealType, String offerEnd, String percentOff, String price, String imgUrl) {
		super();
		this.id = id;
		this.title = title;
		this.dealType = dealType;
		this.offerEnd = offerEnd;
		this.percentOff = percentOff;
		this.price = price;
		this.imgUrl = imgUrl;
	}
	
	public Discounts() {
		super();
	}
	

	public Discounts(long id, String imgUrl, String releaseDate, String reviewStatus, int reviewCount,
			String[] userTag) {
		super();
		this.id = id;
		this.imgUrl = imgUrl;
		this.releaseDate = releaseDate;
		this.reviewStatus = reviewStatus;
		this.reviewCount = reviewCount;
		this.userTag = userTag;
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDealType() {
		return dealType;
	}
	public void setDealType(String dealType) {
		this.dealType = dealType;
	}
	public String getOfferEnd() {
		return offerEnd;
	}
	public void setOfferEnd(String offerEnd) {
		this.offerEnd = offerEnd;
	}
	public String getPercentOff() {
		return percentOff;
	}
	public void setPercentOff(String percentOff) {
		this.percentOff = percentOff;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getReviewStatus() {
		return reviewStatus;
	}
	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}
	public int getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}
	public String[] getUserTag() {
		return userTag;
	}
	public void setUserTag(String[] userTag) {
		this.userTag = userTag;
	}
	
	
	
}
