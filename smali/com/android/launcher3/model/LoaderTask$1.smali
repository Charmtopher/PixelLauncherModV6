.class Lcom/android/launcher3/model/LoaderTask$1;
.super Lcom/android/launcher3/util/Provider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderTask;

.field final synthetic val$c:Lcom/android/launcher3/model/LoaderCursor;

.field final synthetic val$finalInfo:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/ShortcutInfo;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask$1;->this$0:Lcom/android/launcher3/model/LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask$1;->val$c:Lcom/android/launcher3/model/LoaderCursor;

    iput-object p3, p0, Lcom/android/launcher3/model/LoaderTask$1;->val$finalInfo:Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {p0}, Lcom/android/launcher3/util/Provider;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask$1;->val$c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask$1;->val$finalInfo:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/ShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask$1;->val$finalInfo:Lcom/android/launcher3/ShortcutInfo;

    iget-object v0, v0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
