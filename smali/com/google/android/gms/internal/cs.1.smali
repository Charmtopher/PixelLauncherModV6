.class public final Lcom/google/android/gms/internal/cs;
.super Ljava/lang/Object;


# static fields
.field public static final UR:Lcom/google/android/gms/common/api/Status;

.field static final US:[Lcom/google/android/gms/internal/aP;


# instance fields
.field private final Tv:Ljava/util/Map;

.field final UT:Ljava/util/Set;

.field private final UU:Lcom/google/android/gms/internal/cv;

.field private UV:Lcom/google/android/gms/common/api/B;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The connection to Google Play services was lost"

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cs;->UR:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/aP;

    sput-object v0, Lcom/google/android/gms/internal/cs;->US:[Lcom/google/android/gms/internal/aP;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->UT:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/ct;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/cs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cs;->UU:Lcom/google/android/gms/internal/cv;

    iput-object p1, p0, Lcom/google/android/gms/internal/cs;->Tv:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/common/api/B;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cs;->UV:Lcom/google/android/gms/common/api/B;

    return-object p0
.end method


# virtual methods
.method final b(Lcom/google/android/gms/internal/aP;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->UT:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->UU:Lcom/google/android/gms/internal/cv;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aP;->a(Lcom/google/android/gms/internal/cv;)V

    return-void
.end method

.method public final release()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->UT:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/cs;->US:[Lcom/google/android/gms/internal/aP;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/aP;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/aP;->a(Lcom/google/android/gms/internal/cv;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/aP;->Sb:Ljava/lang/Integer;

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/aP;->hk()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/cs;->UT:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/aP;->a(Lcom/google/android/gms/common/api/z;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/cs;->Tv:Ljava/util/Map;

    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/internal/aK;

    iget-object v7, v7, Lcom/google/android/gms/internal/aK;->RG:Lcom/google/android/gms/common/api/h;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/j;

    invoke-interface {v6}, Lcom/google/android/gms/common/api/j;->ft()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/cs;->UV:Lcom/google/android/gms/common/api/B;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/aP;->hj()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v5, Lcom/google/android/gms/internal/cu;

    invoke-direct {v5, v4, v7, v6, v2}, Lcom/google/android/gms/internal/cu;-><init>(Lcom/google/android/gms/internal/aP;Lcom/google/android/gms/common/api/B;Landroid/os/IBinder;B)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/aP;->a(Lcom/google/android/gms/internal/cv;)V

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/cu;

    invoke-direct {v5, v4, v7, v6, v2}, Lcom/google/android/gms/internal/cu;-><init>(Lcom/google/android/gms/internal/aP;Lcom/google/android/gms/common/api/B;Landroid/os/IBinder;B)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/aP;->a(Lcom/google/android/gms/internal/cv;)V

    :try_start_0
    invoke-interface {v6, v5, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/aP;->a(Lcom/google/android/gms/internal/cv;)V

    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/aP;->cancel()V

    iget-object v5, v4, Lcom/google/android/gms/internal/aP;->Sb:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/B;->fA()V

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
