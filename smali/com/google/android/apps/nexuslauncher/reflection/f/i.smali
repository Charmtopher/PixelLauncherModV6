.class Lcom/google/android/apps/nexuslauncher/reflection/f/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/z;


# instance fields
.field final synthetic DZ:Lcom/google/android/apps/nexuslauncher/reflection/f/f;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/f/f;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/i;->DZ:Lcom/google/android/apps/nexuslauncher/reflection/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/y;)V
    .locals 6

    .line 307
    check-cast p1, Lcom/google/android/gms/location/places/d;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/location/places/d;->mStatus:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->fl()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/d;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/location/places/d;->bh(I)Lcom/google/android/gms/location/places/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/location/places/c;->hX()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->DT:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_1

    sget-object v5, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->DT:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/i;->DZ:Lcom/google/android/apps/nexuslauncher/reflection/f/f;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->a(Lcom/google/android/apps/nexuslauncher/reflection/f/f;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/i;->DZ:Lcom/google/android/apps/nexuslauncher/reflection/f/f;

    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->a(Lcom/google/android/apps/nexuslauncher/reflection/f/f;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/d;->release()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/i;->DZ:Lcom/google/android/apps/nexuslauncher/reflection/f/f;

    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->a(Lcom/google/android/apps/nexuslauncher/reflection/f/f;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/d;->release()V

    :cond_6
    return-void

    :goto_3
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/d;->release()V

    :cond_7
    throw v0
.end method
