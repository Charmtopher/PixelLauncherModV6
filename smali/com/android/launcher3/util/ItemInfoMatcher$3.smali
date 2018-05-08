.class public Lcom/android/launcher3/util/ItemInfoMatcher$3;
.super Lcom/android/launcher3/util/ItemInfoMatcher;
.source "SourceFile"


# instance fields
.field final synthetic val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$3;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-direct {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/util/ItemInfoMatcher$3;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
