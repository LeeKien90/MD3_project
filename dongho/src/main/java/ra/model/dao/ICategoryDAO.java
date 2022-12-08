package ra.model.dao;

import java.util.List;

public interface ICategoryDAO<T,V> extends IWatchDAO<T,V> {
    List<T> searchByName(String name);
}
