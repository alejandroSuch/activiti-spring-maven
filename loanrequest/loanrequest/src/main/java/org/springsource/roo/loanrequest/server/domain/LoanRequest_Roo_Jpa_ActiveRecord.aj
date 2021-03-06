// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springsource.roo.loanrequest.server.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import org.springsource.roo.loanrequest.server.domain.LoanRequest;

privileged aspect LoanRequest_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager LoanRequest.entityManager;
    
    public static final EntityManager LoanRequest.entityManager() {
        EntityManager em = new LoanRequest().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LoanRequest.countLoanRequests() {
        return entityManager().createQuery("SELECT COUNT(o) FROM LoanRequest o", Long.class).getSingleResult();
    }
    
    public static List<LoanRequest> LoanRequest.findAllLoanRequests() {
        return entityManager().createQuery("SELECT o FROM LoanRequest o", LoanRequest.class).getResultList();
    }
    
    public static LoanRequest LoanRequest.findLoanRequest(Long id) {
        if (id == null) return null;
        return entityManager().find(LoanRequest.class, id);
    }
    
    public static List<LoanRequest> LoanRequest.findLoanRequestEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM LoanRequest o", LoanRequest.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void LoanRequest.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LoanRequest.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LoanRequest attached = LoanRequest.findLoanRequest(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LoanRequest.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void LoanRequest.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public LoanRequest LoanRequest.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LoanRequest merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
