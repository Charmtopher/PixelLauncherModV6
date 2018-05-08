.class public Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# instance fields
.field private final mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 1

    .line 203
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance p1, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p1, v0}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    return-void
.end method


# virtual methods
.method public final parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 9

    .line 210
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 212
    nop

    .line 213
    const-wide/16 v1, -0x1

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 214
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    return-wide v3

    .line 215
    :cond_2
    :goto_1
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    cmp-long v5, v3, v1

    if-gtz v5, :cond_0

    .line 216
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 219
    const-string v6, "favorite"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 220
    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v3

    goto :goto_0

    .line 222
    :cond_3
    const-string v6, "DefaultLayoutParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Fallback groups can contain only favorites, found "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    goto :goto_0
.end method
