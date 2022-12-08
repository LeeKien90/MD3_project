package ra.model.dao;

import java.util.List;

public interface IProductDAO<T,V> extends IWatchDAO<T,V> {
    List<T> seachProductByName(String name);
    List<T> getProductByCategoryId(V id);

}
