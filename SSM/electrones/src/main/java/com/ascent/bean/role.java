package com.ascent.bean;

public class role {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column role.id
     *
     * @mbg.generated
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column role.is_editor
     *
     * @mbg.generated
     */
    private Boolean isEditor;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column role.is_reviewer
     *
     * @mbg.generated
     */
    private Boolean isReviewer;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column role.id
     *
     * @return the value of role.id
     *
     * @mbg.generated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column role.id
     *
     * @param id the value for role.id
     *
     * @mbg.generated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column role.is_editor
     *
     * @return the value of role.is_editor
     *
     * @mbg.generated
     */
    public Boolean getIsEditor() {
        return isEditor;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column role.is_editor
     *
     * @param isEditor the value for role.is_editor
     *
     * @mbg.generated
     */
    public void setIsEditor(Boolean isEditor) {
        this.isEditor = isEditor;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column role.is_reviewer
     *
     * @return the value of role.is_reviewer
     *
     * @mbg.generated
     */
    public Boolean getIsReviewer() {
        return isReviewer;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column role.is_reviewer
     *
     * @param isReviewer the value for role.is_reviewer
     *
     * @mbg.generated
     */
    public void setIsReviewer(Boolean isReviewer) {
        this.isReviewer = isReviewer;
    }
}