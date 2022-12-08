package ra.model.service;

import java.util.List;

public interface IProductService<T,V> extends IWatchService<T,V>{
    List<T> seachProductByName(String name);
    List<T> getProductByCategoryId(V id);
}
