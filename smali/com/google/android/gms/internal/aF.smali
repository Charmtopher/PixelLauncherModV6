.class public Lcom/google/android/gms/internal/aF;
.super Lcom/google/android/gms/internal/aL;


# instance fields
.field private final Ru:Landroid/util/SparseArray;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bU;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aL;-><init>(Lcom/google/android/gms/internal/bU;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    iget-object p1, p0, Lcom/google/android/gms/internal/aF;->Up:Lcom/google/android/gms/internal/bU;

    const-string v0, "AutoManageHelper"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/bU;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bT;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/bS;)Lcom/google/android/gms/internal/aF;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->Uo:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/bS;->Uo:Ljava/lang/Object;

    check-cast p0, Landroid/support/v4/app/n;

    invoke-static {p0}, Lcom/google/android/gms/internal/cl;->a(Landroid/support/v4/app/n;)Lcom/google/android/gms/internal/cl;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/bS;->Uo:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/google/android/gms/internal/bV;->b(Landroid/app/Activity;)Lcom/google/android/gms/internal/bV;

    move-result-object p0

    :goto_0
    const-string v0, "AutoManageHelper"

    const-class v1, Lcom/google/android/gms/internal/aF;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/bU;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/bT;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aF;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/aF;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aF;-><init>(Lcom/google/android/gms/internal/bU;)V

    return-object v0
.end method

.method private final ba(I)Lcom/google/android/gms/internal/aG;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aG;

    return-object p1
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/common/api/r;Lcom/google/android/gms/common/api/u;)V
    .locals 6

    const-string v0, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Already managing a GoogleApiClient with id "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->RH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aM;

    const-string v1, "AutoManageHelper"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/aF;->mStarted:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x31

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "starting AutoManage for client "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/internal/aG;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/aG;-><init>(Lcom/google/android/gms/internal/aF;ILcom/google/android/gms/common/api/r;Lcom/google/android/gms/common/api/u;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/aF;->mStarted:Z

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    const-string p1, "AutoManageHelper"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0xb

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "connecting "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/r;->connect()V

    :cond_1
    return-void
.end method

.method protected final a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    const-string v0, "AutoManageHelper"

    const-string v1, "Unresolved error while connecting client. Stopping auto-manage."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    const-string p1, "AutoManageHelper"

    const-string p2, "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set"

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aG;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aG;

    iget-object v2, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v1, :cond_1

    iget-object p2, v1, Lcom/google/android/gms/internal/aG;->Rw:Lcom/google/android/gms/common/api/r;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/common/api/r;->b(Lcom/google/android/gms/common/api/u;)V

    iget-object p2, v1, Lcom/google/android/gms/internal/aG;->Rw:Lcom/google/android/gms/common/api/r;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/r;->disconnect()V

    :cond_1
    iget-object p2, v0, Lcom/google/android/gms/internal/aG;->Rx:Lcom/google/android/gms/common/api/u;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/google/android/gms/common/api/u;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_2
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aF;->ba(I)Lcom/google/android/gms/internal/aG;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "GoogleApiClient #"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget v3, v1, Lcom/google/android/gms/internal/aG;->Rv:I

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/aG;->Rw:Lcom/google/android/gms/common/api/r;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/google/android/gms/common/api/r;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final hf()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aF;->ba(I)Lcom/google/android/gms/internal/aG;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/aG;->Rw:Lcom/google/android/gms/common/api/r;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/r;->connect()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/aL;->onStart()V

    const-string v0, "AutoManageHelper"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aF;->mStarted:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->RH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aF;->ba(I)Lcom/google/android/gms/internal/aG;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/aG;->Rw:Lcom/google/android/gms/common/api/r;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/r;->connect()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/aL;->onStop()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aF;->Ru:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aF;->ba(I)Lcom/google/android/gms/internal/aG;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/aG;->Rw:Lcom/google/android/gms/common/api/r;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/r;->disconnect()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
