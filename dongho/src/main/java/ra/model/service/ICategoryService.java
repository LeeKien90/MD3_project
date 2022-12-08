package ra.model.service;

import java.util.List;

public interface ICategoryService<T,V> extends IWatchService<T,V> {
    List<T> searchByName(String name);
}
