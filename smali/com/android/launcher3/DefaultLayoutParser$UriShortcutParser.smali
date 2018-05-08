.class public Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;
.super Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V

    .line 185
    return-void
.end method


# virtual methods
.method public final bridge synthetic parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 2

    .line 181
    invoke-super {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final parseIntent(Landroid/content/res/XmlResourceParser;)Landroid/content/Intent;
    .locals 4

    .line 189
    nop

    .line 191
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "uri"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 193
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p1, v0

    .line 194
    :goto_0
    const-string v1, "DefaultLayoutParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shortcut has malformed uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v0
.end method
