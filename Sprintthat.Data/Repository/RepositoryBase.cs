using Sprintthat.Data.DBContext;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;

namespace Sprintthat.Data.Repository
{
    /// <summary>
    /// 仓储实现，TEntity为泛型实体类型
    /// </summary>
    public class RepositoryBase : IRepositoryBase, IDisposable
    {
        private SprintthatDBContext _dbcontext = new SprintthatDBContext();
        private DbTransaction _dbTransaction { get; set; }

        public IRepositoryBase BeginTrans()
        {
            DbConnection dbConnection = ((IObjectContextAdapter)_dbcontext).ObjectContext.Connection;
            if (dbConnection.State == ConnectionState.Closed)
            {
                dbConnection.Open();
            }
            _dbTransaction = dbConnection.BeginTransaction();
            return this;
        }

        public int Commit()
        {
            try
            {
                var returnValue = _dbcontext.SaveChanges();
                if (_dbTransaction != null)
                {
                    _dbTransaction.Commit();
                }
                return returnValue;
            }
            catch (Exception)
            {
                if (_dbTransaction != null)
                {
                    _dbTransaction.Rollback();
                }
                throw;
            }
            finally
            {
                this.Dispose();
            }
        }

        public void Dispose()
        {
            if (_dbTransaction != null)
            {
                this._dbTransaction.Dispose();
            }
            this._dbcontext.Dispose();
        }

        public int Insert<TEntity>(TEntity entity) where TEntity : class
        {
            _dbcontext.Entry<TEntity>(entity).State = EntityState.Added;
            return _dbTransaction == null ? this.Commit() : 0;
        }

        public int Insert<TEntity>(List<TEntity> entitys) where TEntity : class
        {
            foreach (var entity in entitys)
            {
                _dbcontext.Entry<TEntity>(entity).State = EntityState.Added;
            }
            return _dbTransaction == null ? this.Commit() : 0;
        }

        public int Update<TEntity>(TEntity entity) where TEntity : class
        {
            _dbcontext.Set<TEntity>().Attach(entity);
            PropertyInfo[] props = entity.GetType().GetProperties();
            foreach (PropertyInfo prop in props)
            {
                if (prop.GetValue(entity, null) != null)
                {
                    if (prop.GetValue(entity, null).ToString() == "&nbsp;")
                        _dbcontext.Entry(entity).Property(prop.Name).CurrentValue = null;
                    _dbcontext.Entry(entity).Property(prop.Name).IsModified = true;
                }
            }
            return _dbTransaction == null ? this.Commit() : 0;
        }

        public int Delete<TEntity>(TEntity entity) where TEntity : class
        {
            _dbcontext.Set<TEntity>().Attach(entity);
            _dbcontext.Entry<TEntity>(entity).State = EntityState.Deleted;
            return _dbTransaction == null ? this.Commit() : 0;
        }

        public int Delete<TEntity>(Expression<Func<TEntity, bool>> predicate) where TEntity : class
        {
            var entitys = _dbcontext.Set<TEntity>().Where(predicate).ToList();
            entitys.ForEach(m => _dbcontext.Entry<TEntity>(m).State = EntityState.Deleted);
            return _dbTransaction == null ? this.Commit() : 0;
        }

        public TEntity Find<TEntity>(object keyValue) where TEntity : class
        {
            return _dbcontext.Set<TEntity>().Find(keyValue);
        }

        public TEntity Find<TEntity>(Expression<Func<TEntity, bool>> predicate) where TEntity : class
        {
            return _dbcontext.Set<TEntity>().FirstOrDefault(predicate);
        }

        public IQueryable<TEntity> Query<TEntity>() where TEntity : class
        {
            return _dbcontext.Set<TEntity>().AsQueryable();
        }

        public IQueryable<TEntity> Query<TEntity>(Expression<Func<TEntity, bool>> predicate) where TEntity : class
        {
            return _dbcontext.Set<TEntity>().Where(predicate).AsQueryable();
        }

        public IEnumerable<TEntity> FindBySql<TEntity>(string strSql) where TEntity : class
        {
            return _dbcontext.Database.SqlQuery<TEntity>(strSql).ToList();
        }

        public IEnumerable<TEntity> FindBySql<TEntity>(string strSql, DbParameter[] dbParameter) where TEntity : class
        {
            return _dbcontext.Database.SqlQuery<TEntity>(strSql, dbParameter).ToList();
        }
    }
}
