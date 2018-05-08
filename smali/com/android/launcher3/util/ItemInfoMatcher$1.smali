.class public Lcom/android/launcher3/util/ItemInfoMatcher$1;
.super Lcom/android/launcher3/util/ItemInfoMatcher;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/ItemInfoMatcher;

.field final synthetic val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

.field final synthetic val$that:Lcom/android/launcher3/util/ItemInfoMatcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$1;->this$0:Lcom/android/launcher3/util/ItemInfoMatcher;

    iput-object p2, p0, Lcom/android/launcher3/util/ItemInfoMatcher$1;->val$that:Lcom/android/launcher3/util/ItemInfoMatcher;

    iput-object p3, p0, Lcom/android/launcher3/util/ItemInfoMatcher$1;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-direct {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/util/ItemInfoMatcher$1;->val$that:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/util/ItemInfoMatcher$1;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
