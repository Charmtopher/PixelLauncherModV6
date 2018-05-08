.class Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;I)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->access$000(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;)Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->access$000(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;)Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p3, p3, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-interface {p1, p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;->onEntryEvicted(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 56
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
