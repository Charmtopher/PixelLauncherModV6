.class final Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
.super Landroid/os/ResultReceiver;


# instance fields
.field private final JP:Ljava/util/ArrayList;

.field private synthetic JQ:Lcom/google/android/gms/common/images/ImageManager;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->JP:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    const-string p1, "com.google.android.gms.extra.fileDescriptor"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->JQ:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {p2}, Lcom/google/android/gms/common/images/ImageManager;->f(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/common/images/c;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->JQ:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/common/images/c;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
